.class final Lcom/android/billingclient/api/f1;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/android/billingclient/api/n;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/n;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/f1;->a:Lcom/android/billingclient/api/n;

    iput p2, p0, Lcom/android/billingclient/api/f1;->b:I

    return-void
.end method


# virtual methods
.method final a()Lcom/android/billingclient/api/n;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/f1;->a:Lcom/android/billingclient/api/n;

    return-object v0
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lcom/android/billingclient/api/f1;->b:I

    return v0
.end method
