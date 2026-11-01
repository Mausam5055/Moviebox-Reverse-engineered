.class public Lxe/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/l;


# instance fields
.field private a:Lxe/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/k;)V
    .locals 1

    iget-object v0, p0, Lxe/i;->a:Lxe/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lxe/g;->a(Lcom/google/zxing/k;)V

    :cond_0
    return-void
.end method

.method public b(Lxe/g;)V
    .locals 0

    iput-object p1, p0, Lxe/i;->a:Lxe/g;

    return-void
.end method
