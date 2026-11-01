.class public Lob/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lic/a;


# direct methods
.method public constructor <init>(Lic/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lob/l;->a:Lic/a;

    return-void
.end method

.method public static synthetic a(Lob/e;Lic/b;)V
    .locals 0

    invoke-static {p0, p1}, Lob/l;->b(Lob/e;Lic/b;)V

    return-void
.end method

.method private static synthetic b(Lob/e;Lic/b;)V
    .locals 1

    invoke-interface {p1}, Lic/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lad/a;

    const-string v0, "firebase"

    invoke-interface {p1, v0, p0}, Lad/a;->a(Ljava/lang/String;Lbd/f;)V

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p0

    const-string p1, "Registering RemoteConfig Rollouts subscriber"

    invoke-virtual {p0, p1}, Lob/g;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lrb/o;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v0, "Didn\'t successfully register with UserMetadata for rollouts listener"

    invoke-virtual {p1, v0}, Lob/g;->k(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lob/e;

    invoke-direct {v0, p1}, Lob/e;-><init>(Lrb/o;)V

    iget-object p1, p0, Lob/l;->a:Lic/a;

    new-instance v1, Lob/k;

    invoke-direct {v1, v0}, Lob/k;-><init>(Lob/e;)V

    invoke-interface {p1, v1}, Lic/a;->a(Lic/a$a;)V

    return-void
.end method
