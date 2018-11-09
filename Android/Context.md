# What is `Context` in Android

## 20181109

### answer

As the name suggests, it’s the context of current state of the application/object. It lets newly-created objects understand what has been going on. Typically you call it to get information regarding another part of your program (activity and package/application)

You can get the context by invoking getApplicationContext(), getContext(), getBaseContext(), or this (when in a class that extends from Context. such as the application, Activity, Service and IntentService classes)

#### Create new Objects: Create new views, adapter, listeners:
```java
TextView tv = new TextView(getContext());
ListAdapter adapter = new SimpleCursorAdapter(getApplicationContext(), …);
```

#### Accessing standard common resources: Services like LAYOUT_INFLATER_SERVICE, SharedPreferences:
```java
context/.getSystemService(LAYOUT_INFLATER_SERVICE);
getApplicationContext().getSharedPreferences(*name*, *mode*);
```

#### Accessing components implicitly: Regarding content providers, broadcasts, intent:
```java
getApplicationContext().getContentResolver().query(uri, …);
```

--- 

### source

* [stackoverflow](https://stackoverflow.com/questions/3572463/what-is-context-on-android)
