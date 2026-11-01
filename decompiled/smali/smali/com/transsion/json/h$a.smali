.class final Lcom/transsion/json/h$a;
.super Ljava/lang/ThreadLocal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/json/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/transsion/json/h;
    .locals 1

    new-instance v0, Lcom/transsion/json/h;

    invoke-direct {v0}, Lcom/transsion/json/h;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/json/h$a;->a()Lcom/transsion/json/h;

    move-result-object v0

    return-object v0
.end method
