# Data Collection / Loading
import pandas as pd
df = pd.read_csv("data.csv")
df.head()
df.info()
--------------------------------------------
# Data Cleaning
df.drop_duplicates(inplace=True)
df.dropna(inplace=True)
df['column'] = df['column'].replace({...})
--------------------------------------------
# Data Preprocessing
df['date'] = pd.to_datetime(df['date'])
df['year'] = df['date'].dt.year
df['new_metric'] = df['price'] * df['quantity']
---------------------------------------------
# Exploratory Data Analysis (EDA)
import matplotlib.pyplot as plt
import seaborn as sns

df.describe()
df.corr()
sns.countplot(x='category', data=df)
----------------------------------------------
# ML Implementation
## A. Linear Regression (Prediction)
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split

X = df[['feature1','feature2']]
y = df['target']

X_train, X_test, y_train, y_test = train_test_split(X,y,test_size=0.2)
model = LinearRegression()
model.fit(X_train,y_train)
predictions = model.predict(X_test)


## B. Random Forest (Classification)
from sklearn.ensemble import RandomForestClassifier

rf = RandomForestClassifier()
rf.fit(X_train,y_train)
pred = rf.predict(X_test)

## C. K-Means (Clustering)
from sklearn.cluster import KMeans

kmeans = KMeans(n_clusters=3)
df['cluster'] = kmeans.fit_predict(df[['feature1','feature2']])

# 🧠 How ML Output Went to Dashboard
# ML Predictions → Export CSV → Load into Power BI → Visualized as forecast/segments
----------------------------------------------------------------------------------------
# NLP / Text Analysis (If text data)
from textblob import TextBlob
df['sentiment'] = df['text'].apply(lambda x: TextBlob(x).sentiment.polarity)
-----------------------------------------------------------------------------------------
#Data Export / Reporting
df.to_csv("cleaned_data.csv", index=False)





