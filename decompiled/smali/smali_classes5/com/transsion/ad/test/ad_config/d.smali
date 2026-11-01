.class public abstract synthetic Lcom/transsion/ad/test/ad_config/d;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method
