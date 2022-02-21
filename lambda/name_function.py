def lambda_handler(event, context):

    name = 'Nacho'

    if 'queryStringParameters' in event and 'name' in event['queryStringParameters']:
        name = event['queryStringParameters']['name']

    return {
        'headers': {
            'Content-Type': 'text/plain; charset=utf-8'
        },
        'statusCode': 200,
        'body': f'Hola {name} desde una función Lambda'
    }