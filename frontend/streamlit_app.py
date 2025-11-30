import streamlit as st
import requests

API_URL = "http://localhost:8000"

st.title("CI/CD Demo App 🛠️")

if st.button("Test Service 1"):
    st.write(requests.get(f"{API_URL}/service1").json())

if st.button("Test Service 2"):
    st.write(requests.get(f"{API_URL}/service2").json())

if st.button("Test Service 3"):
    st.write(requests.get(f"{API_URL}/service3").json())
