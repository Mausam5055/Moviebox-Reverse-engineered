.class final Lxl/i$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxl/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:Lxl/k;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxl/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxl/k$b;-><init>(Lxl/k$a;)V

    iput-object v0, p0, Lxl/i$b;->b:Lxl/k;

    iput-object p1, p0, Lxl/i$b;->a:Ljava/security/MessageDigest;

    return-void
.end method

.method static synthetic a(Lxl/i$b;)Ljava/security/MessageDigest;
    .locals 0

    iget-object p0, p0, Lxl/i$b;->a:Ljava/security/MessageDigest;

    return-object p0
.end method


# virtual methods
.method public getVerifier()Lxl/k;
    .locals 1

    iget-object v0, p0, Lxl/i$b;->b:Lxl/k;

    return-object v0
.end method
