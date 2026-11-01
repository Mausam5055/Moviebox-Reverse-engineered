.class public Lcom/android/billingclient/api/m$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/m$c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/m$c;->c:I

    iput p1, p0, Lcom/android/billingclient/api/m$c;->d:I

    return-void
.end method

.method public static a()Lcom/android/billingclient/api/m$c$a;
    .locals 2

    new-instance v0, Lcom/android/billingclient/api/m$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/m$c$a;-><init>(Lcom/android/billingclient/api/j0;)V

    return-object v0
.end method

.method static bridge synthetic f(Lcom/android/billingclient/api/m$c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/m$c;->a:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic g(Lcom/android/billingclient/api/m$c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/m$c;->b:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic h(Lcom/android/billingclient/api/m$c;I)V
    .locals 0

    iput p1, p0, Lcom/android/billingclient/api/m$c;->c:I

    return-void
.end method

.method static bridge synthetic i(Lcom/android/billingclient/api/m$c;I)V
    .locals 0

    iput p1, p0, Lcom/android/billingclient/api/m$c;->d:I

    return-void
.end method


# virtual methods
.method final b()I
    .locals 1

    iget v0, p0, Lcom/android/billingclient/api/m$c;->c:I

    return v0
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/android/billingclient/api/m$c;->d:I

    return v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/m$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/m$c;->b:Ljava/lang/String;

    return-object v0
.end method
