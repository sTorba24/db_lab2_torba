import psycopg2
import matplotlib.pyplot as plt

query_1 = '''
SELECT ins_charge,hum_name 
FROM insuranse INNER JOIN humans ON insuranse.hum_id = humans.hum_id
'''
query_2 = '''
SELECT hum_smoker,COUNT(*)
FROM humans 
GROUP BY hum_smoker
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

            print('Query 1:')
            cur.execute(query_1)
            values = []
            names = []
            for row in cur:
                print(row)
                values.append(row[0])
                names.append(row[1])
            
            fig1 = plt.bar(names, values,width = 0.7)

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
            
            print('\nQuery 3:')
            cur.execute(query_3)
            moneys=[]
            ages=[]
            for row in cur:
                print(row)
                moneys.append(row[0])
                ages.append(row[1])
            
            fig3 = plt.bar(ages, moneys,width = 0.5)
        
        cur.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        plt.show()
        if conn is not None:
            conn.close()
            print('Database connection closed.')

connect()
plt.show()
