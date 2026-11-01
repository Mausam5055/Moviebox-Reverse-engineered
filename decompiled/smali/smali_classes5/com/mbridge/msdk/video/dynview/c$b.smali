.class public Lcom/mbridge/msdk/video/dynview/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/video/dynview/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/dynview/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:Landroid/view/View;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->p:I

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/dynview/c$b;)F
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->e:F

    return p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/dynview/c$b;)F
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->d:F

    return p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/dynview/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->k:Z

    return p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/video/dynview/c$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/video/dynview/c$b;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->m:I

    return p0
.end method

.method static synthetic f(Lcom/mbridge/msdk/video/dynview/c$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/mbridge/msdk/video/dynview/c$b;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->o:I

    return p0
.end method

.method static synthetic h(Lcom/mbridge/msdk/video/dynview/c$b;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->p:I

    return p0
.end method

.method static synthetic i(Lcom/mbridge/msdk/video/dynview/c$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/mbridge/msdk/video/dynview/c$b;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->f:I

    return p0
.end method

.method static synthetic k(Lcom/mbridge/msdk/video/dynview/c$b;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->g:I

    return p0
.end method

.method static synthetic l(Lcom/mbridge/msdk/video/dynview/c$b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic m(Lcom/mbridge/msdk/video/dynview/c$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcom/mbridge/msdk/video/dynview/c$b;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->c:I

    return p0
.end method

.method static synthetic o(Lcom/mbridge/msdk/video/dynview/c$b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic p(Lcom/mbridge/msdk/video/dynview/c$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic q(Lcom/mbridge/msdk/video/dynview/c$b;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/video/dynview/c$b;->j:I

    return p0
.end method


# virtual methods
.method public a(F)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->e:F

    return-object p0
.end method

.method public a(I)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->j:I

    return-object p0
.end method

.method public a(Landroid/content/Context;)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->a:Landroid/content/Context;

    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->h:Landroid/view/View;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->n:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)",
            "Lcom/mbridge/msdk/video/dynview/c$c;"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->i:Ljava/util/List;

    return-object p0
.end method

.method public a(Z)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->k:Z

    return-object p0
.end method

.method public b(F)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->d:F

    return-object p0
.end method

.method public b(I)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->c:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->q:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/mbridge/msdk/video/dynview/c;
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/video/dynview/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/video/dynview/c;-><init>(Lcom/mbridge/msdk/video/dynview/c$b;Lcom/mbridge/msdk/video/dynview/c$a;)V

    return-object v0
.end method

.method public c(I)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->g:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(I)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->m:I

    return-object p0
.end method

.method public e(I)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->p:I

    return-object p0
.end method

.method public f(I)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->o:I

    return-object p0
.end method

.method public fileDirs(Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mbridge/msdk/video/dynview/c$c;"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->l:Ljava/util/List;

    return-object p0
.end method

.method public orientation(I)Lcom/mbridge/msdk/video/dynview/c$c;
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/c$b;->f:I

    return-object p0
.end method
