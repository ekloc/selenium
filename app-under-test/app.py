from flask import Flask
from time import gmtime, strftime, mktime

app = Flask(__name__)



def make_time_now():
    # Define the UTC offset for UTC-5 (in seconds)
    utc_offset = -3 * 60 * 60

    # Get the current time in UTC and convert it to a Unix timestamp
    current_gm_time = gmtime()

    current_timestamp = mktime(current_gm_time)

    # Subtract the UTC offset for UTC-5 from the Unix timestamp to get the UTC-5 timestamp
    current_timestamp_est = current_timestamp - utc_offset

    # Convert the UTC-5 timestamp to a struct_time object
    current_time_est = gmtime(current_timestamp_est)

    # Format the time as a string
    formatted_time = strftime("%a, %d %b %Y %H:%M", current_time_est)
    return formatted_time

@app.route('/')
def hello():
    time_now = make_time_now()
    html = "<h3>Hello!</h3>" \
           "<b>Time now is:</b> {} <br/>" \

    return html.format(time_now)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
