.class public abstract synthetic Lcom/transsion/ad/monopoly/intercept/c;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
