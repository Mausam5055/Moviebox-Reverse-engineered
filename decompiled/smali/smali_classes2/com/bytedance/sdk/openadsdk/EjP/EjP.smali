.class public Lcom/bytedance/sdk/openadsdk/EjP/EjP;
.super Ljava/lang/Object;


# direct methods
.method public static Sj()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS adevent (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0 , channel INTEGER default 0)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sP()Ljava/lang/String;
    .locals 1

    const-string v0, "ALTER TABLE adevent ADD COLUMN encrypt INTEGER default 0"

    return-object v0
.end method
