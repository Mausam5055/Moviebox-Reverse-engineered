.class public final Lej/f$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lej/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/bumptech/glide/Priority;

.field private p:Lkotlin/jvm/functions/Function3;

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lej/f$b;->a:Landroid/content/Context;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->b()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lej/f$b;->b:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v0

    iput v0, p0, Lej/f$b;->c:I

    iput p1, p0, Lej/f$b;->d:I

    iput v0, p0, Lej/f$b;->e:I

    const-string p1, ""

    iput-object p1, p0, Lej/f$b;->f:Ljava/lang/String;

    iput-object p1, p0, Lej/f$b;->g:Ljava/lang/String;

    sget p1, Lcom/transsion/base/image/R$color;->image_default:I

    iput p1, p0, Lej/f$b;->h:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lej/f$b;->j:Z

    iput-boolean p1, p0, Lej/f$b;->k:Z

    iput-boolean p1, p0, Lej/f$b;->l:Z

    sget-object p1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object p1, p0, Lej/f$b;->o:Lcom/bumptech/glide/Priority;

    return-void
.end method


# virtual methods
.method public final a(I)Lej/f$b;
    .locals 0

    iput p1, p0, Lej/f$b;->q:I

    return-object p0
.end method

.method public final b(Lkotlin/jvm/functions/Function3;)Lej/f$b;
    .locals 0

    iput-object p1, p0, Lej/f$b;->p:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public final c(I)Lej/f$b;
    .locals 0

    iput p1, p0, Lej/f$b;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lej/f$b;->n:Z

    return-object p0
.end method

.method public final d(Landroid/widget/ImageView;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    const-string v1, "imageView"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lej/f;->a:Lej/f$a;

    iget-object v2, v0, Lej/f$b;->a:Landroid/content/Context;

    iget-object v4, v0, Lej/f$b;->f:Ljava/lang/String;

    iget v5, v0, Lej/f$b;->h:I

    iget v6, v0, Lej/f$b;->d:I

    iget v7, v0, Lej/f$b;->e:I

    iget v8, v0, Lej/f$b;->i:I

    iget-boolean v9, v0, Lej/f$b;->j:Z

    iget-object v10, v0, Lej/f$b;->g:Ljava/lang/String;

    iget-boolean v11, v0, Lej/f$b;->k:Z

    iget-boolean v12, v0, Lej/f$b;->l:Z

    iget-boolean v13, v0, Lej/f$b;->m:Z

    iget-boolean v14, v0, Lej/f$b;->n:Z

    iget-object v15, v0, Lej/f$b;->o:Lcom/bumptech/glide/Priority;

    move-object/from16 p1, v1

    iget v1, v0, Lej/f$b;->q:I

    move/from16 v16, v1

    iget-object v1, v0, Lej/f$b;->p:Lkotlin/jvm/functions/Function3;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v17}, Lej/f$a;->b(Lej/f$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZLcom/bumptech/glide/Priority;ILkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final e(Z)Lej/f$b;
    .locals 0

    iput-boolean p1, p0, Lej/f$b;->k:Z

    return-object p0
.end method

.method public final f(Z)Lej/f$b;
    .locals 0

    iput-boolean p1, p0, Lej/f$b;->j:Z

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lej/f$b;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lej/f$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Z)Lej/f$b;
    .locals 0

    iput-boolean p1, p0, Lej/f$b;->m:Z

    return-object p0
.end method

.method public final i(I)Lej/f$b;
    .locals 0

    iput p1, p0, Lej/f$b;->h:I

    return-object p0
.end method

.method public final j(I)Lej/f$b;
    .locals 0

    iput p1, p0, Lej/f$b;->i:I

    return-object p0
.end method

.method public final k(Z)Lej/f$b;
    .locals 0

    iput-boolean p1, p0, Lej/f$b;->l:Z

    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lej/f$b;
    .locals 1

    const-string v0, "thumbnail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lej/f$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final m(I)Lej/f$b;
    .locals 0

    iput p1, p0, Lej/f$b;->d:I

    return-object p0
.end method
