.class public Lcom/iab/omid/library/vungle/adsession/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/vungle/adsession/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/iab/omid/library/vungle/adsession/f;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/f;
    .locals 1

    const-string v0, "Name is null or empty"

    invoke-static {p0, v0}, Lue/g;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version is null or empty"

    invoke-static {p1, v0}, Lue/g;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/vungle/adsession/f;

    invoke-direct {v0, p0, p1}, Lcom/iab/omid/library/vungle/adsession/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/f;->b:Ljava/lang/String;

    return-object v0
.end method
