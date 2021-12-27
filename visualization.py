import psycopg2
import matplotlib.pyplot as plt

query_1 = '''
SELECT ins_charge,hum_name 
FROM insuranse INNER JOIN humans ON insuranse.hum_id = humans.hum_id
'''
query_2 = '''
SELECT isSmoker,COUNT(*)
FROM smokers 
GROUP BY isSmoker
'''

query_3 = '''
SELECT ins_charge,hum_age
FROM insuranse INNER JOIN humans ON insuranse.hum_id = humans.hum_id
'''

def connect():
    """ Connect to the PostgreSQL database server """
    conn = None
    try:
        # connect to the PostgreSQL server
        print('Connecting to the PostgreSQL database...')
        conn = psycopg2.connect(
            host="localhost",
            database="studentTorba",
            user="postgres",
            password="sobaka123")
		
        with conn:
            cur = conn.cursor()

            cur.execute(query_1)

            data_to_visualise = {}
            
            for row in cur:
                data_to_visualise[row[1]] = row[0]
            print(data_to_visualise)
            x_range = range(len(data_to_visualise.keys()))
        
            figure, bar_ax = plt.subplots()
            bar = bar_ax.bar(x_range, data_to_visualise.values(), label='Total')
            bar_ax.set_title('Charge for every human')
            bar_ax.set_xlabel('Human')
            bar_ax.set_ylabel('Charge')
            bar_ax.set_xticks(x_range)
            bar_ax.set_xticklabels(data_to_visualise.keys())

            print('\nQuery 2:')
            cur.execute(query_2)
            smokes = []
            count = []
            for row in cur:
                print(row)
                smokes.append(row[0])
                count.append(row[1])

            fig2, ax = plt.subplots()
            ax.pie(count, labels=smokes)
            ax.axis("equal")

            cur.execute(query_3)
            data_to_visualise = {}

            for row in cur:
                data_to_visualise[row[1]] = row[0]

            x_range = range(len(data_to_visualise.keys()))
        
            figure, bar_ax = plt.subplots()
            bar = bar_ax.bar(x_range, data_to_visualise.values(), label='Total')
            bar_ax.set_title('Dependency charge from age')
            bar_ax.set_xlabel('Human')
            bar_ax.set_ylabel('Age')
            bar_ax.set_xticks(x_range)
            bar_ax.set_xticklabels(data_to_visualise.keys())

    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        mng = plt.get_current_fig_manager()
        mng.resize(1400, 600)

        plt.show()
        if conn is not None:
            conn.close()
            print('Database connection closed.')

connect()
