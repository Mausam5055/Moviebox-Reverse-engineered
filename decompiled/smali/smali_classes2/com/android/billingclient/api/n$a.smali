.class public Lcom/android/billingclient/api/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/billingclient/api/n$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/n;
    .locals 2

    new-instance v0, Lcom/android/billingclient/api/n;

    invoke-direct {v0}, Lcom/android/billingclient/api/n;-><init>()V

    iget v1, p0, Lcom/android/billingclient/api/n$a;->a:I

    invoke-static {v0, v1}, Lcom/android/billingclient/api/n;->e(Lcom/android/billingclient/api/n;I)V

    iget-object v1, p0, Lcom/android/billingclient/api/n$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/n;->d(Lcom/android/billingclient/api/n;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/android/billingclient/api/n$a;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/n$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Lcom/android/billingclient/api/n$a;
    .locals 0

    iput p1, p0, Lcom/android/billingclient/api/n$a;->a:I

    return-object p0
.end method
