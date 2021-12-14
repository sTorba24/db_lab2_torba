import psycopg2

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
            for row in cur:
                print(row)

            print('\nQuery 2:')
            cur.execute(query_2)
            for row in cur:
                print(row)
            
            print('\nQuery 3:')
            cur.execute(query_3)
            for row in cur:
                print(row)
        
        cur.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            conn.close()
            print('Database connection closed.')

connect()
