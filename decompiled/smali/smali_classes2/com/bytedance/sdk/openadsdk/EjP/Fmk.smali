.class public Lcom/bytedance/sdk/openadsdk/EjP/Fmk;
.super Ljava/lang/Object;


# direct methods
.method public static Sj()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS logstatsbatch (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)"

    return-object v0
.end method

.method public static sP()Ljava/lang/String;
    .locals 1

    const-string v0, "ALTER TABLE logstatsbatch ADD COLUMN encrypt INTEGER default 0"

    return-object v0
.end method
