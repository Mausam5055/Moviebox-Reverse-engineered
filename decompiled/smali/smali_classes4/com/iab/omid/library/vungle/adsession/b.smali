.class public abstract Lcom/iab/omid/library/vungle/adsession/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iab/omid/library/vungle/adsession/c;Lcom/iab/omid/library/vungle/adsession/d;)Lcom/iab/omid/library/vungle/adsession/b;
    .locals 1

    invoke-static {}, Lue/g;->a()V

    const-string v0, "AdSessionConfiguration is null"

    invoke-static {p0, v0}, Lue/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdSessionContext is null"

    invoke-static {p1, v0}, Lue/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/vungle/adsession/h;

    invoke-direct {v0, p0, p1}, Lcom/iab/omid/library/vungle/adsession/h;-><init>(Lcom/iab/omid/library/vungle/adsession/c;Lcom/iab/omid/library/vungle/adsession/d;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()V
.end method

.method public abstract c(Landroid/view/View;)V
.end method

.method public abstract d()V
.end method
