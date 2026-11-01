.class public abstract Lcom/transsion/share/share/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/share/share/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lcom/transsion/share/share/a;Ljava/lang/String;Lcom/transsion/share/bean/PostType;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/share/share/a;->a(Ljava/lang/String;Lcom/transsion/share/bean/PostType;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: delete"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/transsion/share/share/a;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static c(Lcom/transsion/share/share/a;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
