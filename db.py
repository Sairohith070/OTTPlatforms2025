import mysql.connector


# Function to fetch all records from the 'content' table
def select(conn, query):
    cursor = conn.cursor()
    cursor.execute(query)
    results = cursor.fetchall()
    cursor.close()
    return results

# Function to execute insert, update, or delete queries
def execute(conn, query):
    cursor = conn.cursor()
    cursor.execute(query)
    conn.commit()
    cursor.close()

# Function to display query results
def show(rows):
    for row in rows:
        print(row)



# Try to connect to the database
try:
    conn = mysql.connector.connect(
        host="localhost",  # MySQL server address
        user="root",  # MySQL username
        password="" ,
        database="ottplatform2025"   #database name
    )
    print("Database connection successful.\n")
except mysql.connector.Error as err:
    print(err)
    exit()

# Select a record where Title is 'RRR'
print("Select a record ")
rows = select(conn, "SELECT * FROM content WHERE Title = 'RRR'")
show(rows)

# Insert a new record into the 'content' table
print("Now insert a record")
execute(conn, "INSERT INTO content (Title, year, Rating, number_of_seasons, Duration, OTT_Platform_ID, Language_ID, Genre_ID, Director_ID, Content_Type_ID) VALUES ('Baahubali 2', 2017, 9, NULL, 167, 1, 1, 2, 5, 1)")

# Display the updated records from the 'content' table
rows = select(conn, "SELECT * FROM content")
print("Updated records after insertion:")
show(rows)

# Save data to a text file
with open("content_data.txt", "w", encoding="utf-8") as file:
    for row in rows:
        file.write(" | ".join(str(item) if item is not None else "NULL" for item in row) + "\n")

print("Data successfully saved to content_data.txt")

# Close the database connection
conn.close()