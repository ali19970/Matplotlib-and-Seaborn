#!/usr/bin/env python
# coding: utf-8

# In[1]:


import matplotlib.pyplot as plt
import seaborn as sns


# # Data

# In[5]:


tips = sns.load_dataset('tips')


# In[6]:


tips.head()


# # countplot

# In[9]:


sns.countplot(x='sex' , data=tips)


# In[10]:


sns.countplot(x = 'day' , data=tips)


# In[11]:


sns.countplot(x = 'sex' , data=tips , hue='day')


# # distplot

# In[12]:


x = tips['total_bill']


# In[13]:


sns.distplot(x)


# In[16]:


sns.distplot(x  , kde = False)


# # scatterplot

# In[17]:


x = tips['total_bill']
y = tips['tip']
sns.scatterplot(x,y)


# # boxplot

# In[19]:


#palette = 'viridis'
sns.boxplot(x = 'day' , y = 'total_bill' , data=tips , palette = 'rainbow')


# # pairplot

# In[20]:


sns.pairplot(tips)


# In[21]:


sns.pairplot(tips , hue='sex' , palette='coolwarm')


# # joinplot

# In[24]:


sns.jointplot(x = 'total_bill' , y = 'tip' , data=tips , kind='scatter')


# In[25]:


sns.jointplot(x = 'total_bill' , y = 'tip' , data = tips , kind = 'reg')


# # Matplotlib & Seaborn

# In[27]:


#plt.subplot(nrow , ncols , plot_number)
plt.subplot(1,2,1)
sns.countplot(x = 'sex' , data = tips)
plt.subplot(1,2,2)
sns.countplot(x = 'day' , data = tips)


# In[ ]:




