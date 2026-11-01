.class public Lcom/gyf/immersionbar/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public A:Landroid/view/View;

.field public B:Z

.field public C:I

.field public D:I

.field public E:Z

.field public F:Z

.field public G:I

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field L:Lcom/gyf/immersionbar/n;

.field public a:I

.field public b:I

.field public c:I

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:Z

.field public i:Z

.field public j:Lcom/gyf/immersionbar/BarHide;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:F

.field public p:F

.field public q:Z

.field public r:I

.field public s:I

.field t:Ljava/util/Map;

.field public u:F

.field public v:I

.field public w:I

.field public x:F

.field public y:Z

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gyf/immersionbar/b;->a:I

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/gyf/immersionbar/b;->b:I

    iput v1, p0, Lcom/gyf/immersionbar/b;->c:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/gyf/immersionbar/b;->d:F

    iput v2, p0, Lcom/gyf/immersionbar/b;->e:F

    iput v2, p0, Lcom/gyf/immersionbar/b;->f:F

    iput v2, p0, Lcom/gyf/immersionbar/b;->g:F

    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->h:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->i:Z

    sget-object v3, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    iput-object v3, p0, Lcom/gyf/immersionbar/b;->j:Lcom/gyf/immersionbar/BarHide;

    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->k:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->l:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->m:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->n:Z

    iput v2, p0, Lcom/gyf/immersionbar/b;->o:F

    iput v2, p0, Lcom/gyf/immersionbar/b;->p:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/gyf/immersionbar/b;->q:Z

    iput v1, p0, Lcom/gyf/immersionbar/b;->r:I

    iput v1, p0, Lcom/gyf/immersionbar/b;->s:I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/gyf/immersionbar/b;->t:Ljava/util/Map;

    iput v2, p0, Lcom/gyf/immersionbar/b;->u:F

    iput v0, p0, Lcom/gyf/immersionbar/b;->v:I

    iput v1, p0, Lcom/gyf/immersionbar/b;->w:I

    iput v2, p0, Lcom/gyf/immersionbar/b;->x:F

    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->y:Z

    iput-boolean v3, p0, Lcom/gyf/immersionbar/b;->B:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->E:Z

    iput-boolean v0, p0, Lcom/gyf/immersionbar/b;->F:Z

    const/16 v0, 0x12

    iput v0, p0, Lcom/gyf/immersionbar/b;->G:I

    iput-boolean v3, p0, Lcom/gyf/immersionbar/b;->H:Z

    iput-boolean v3, p0, Lcom/gyf/immersionbar/b;->I:Z

    iput-boolean v3, p0, Lcom/gyf/immersionbar/b;->J:Z

    iput-boolean v3, p0, Lcom/gyf/immersionbar/b;->K:Z

    return-void
.end method


# virtual methods
.method protected a()Lcom/gyf/immersionbar/b;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gyf/immersionbar/b;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/gyf/immersionbar/b;->a()Lcom/gyf/immersionbar/b;

    move-result-object v0

    return-object v0
.end method
