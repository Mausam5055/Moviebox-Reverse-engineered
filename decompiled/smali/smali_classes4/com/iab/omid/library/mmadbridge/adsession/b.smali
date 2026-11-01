.class public abstract Lcom/iab/omid/library/mmadbridge/adsession/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lcom/iab/omid/library/mmadbridge/adsession/c;Lcom/iab/omid/library/mmadbridge/adsession/d;)Lcom/iab/omid/library/mmadbridge/adsession/b;
    .locals 1

    invoke-static {}, Loe/g;->a()V

    const-string v0, "AdSessionConfiguration is null"

    invoke-static {p0, v0}, Loe/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdSessionContext is null"

    invoke-static {p1, v0}, Loe/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/mmadbridge/adsession/h;

    invoke-direct {v0, p0, p1}, Lcom/iab/omid/library/mmadbridge/adsession/h;-><init>(Lcom/iab/omid/library/mmadbridge/adsession/c;Lcom/iab/omid/library/mmadbridge/adsession/d;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
.end method

.method public abstract c()V
.end method

.method public abstract d(Landroid/view/View;)V
.end method

.method public abstract e()V
.end method

.method public abstract f(Landroid/view/View;)V
.end method

.method public abstract g()V
.end method
