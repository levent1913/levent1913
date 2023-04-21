# -*- coding: utf-8 -*-

import boto3

import concurrent.futures

# AWS Lambda istemcisini oluşturun ve bölgenizi belirtin

client = boto3.client('lambda', region_name='ap-southeast-2')

# Çağırmak istediğiniz fonksiyonun adını ayarlayın

function_name = 'camop'

# Birden fazla çağrı yapmak için bir fonksiyon tanımlayın

def invoke_lambda():

    response = client.invoke(FunctionName=function_name)

    # İsteğin sonucunu ve diğer işlemleri işleyin

    # ...

# Bir thread havuzu oluşturun ve her çağrıyı ayrı bir thread'te çağırın

with concurrent.futures.ThreadPoolExecutor(max_workers=400) as executor:

    while True:

        futures = [executor.submit(invoke_lambda) for _ in range(400)]

