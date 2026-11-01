.class public final Lcom/android/billingclient/api/m$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/m$b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/billingclient/api/r;

.field private final b:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/m$b$a;Lcom/android/billingclient/api/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/m$b$a;->d(Lcom/android/billingclient/api/m$b$a;)Lcom/android/billingclient/api/r;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/m$b;->a:Lcom/android/billingclient/api/r;

    invoke-static {p1}, Lcom/android/billingclient/api/m$b$a;->e(Lcom/android/billingclient/api/m$b$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/m$b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/android/billingclient/api/m$b$a;
    .locals 2

    new-instance v0, Lcom/android/billingclient/api/m$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/m$b$a;-><init>(Lcom/android/billingclient/api/h0;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/android/billingclient/api/r;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/m$b;->a:Lcom/android/billingclient/api/r;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/m$b;->b:Ljava/lang/String;

    return-object v0
.end method
