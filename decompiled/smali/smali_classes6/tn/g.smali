.class public final Ltn/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:I

.field private final c:Lcom/transsion/moviedetailapi/bean/Subject;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;ILcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltn/g;->a:Landroidx/fragment/app/Fragment;

    iput p2, p0, Ltn/g;->b:I

    iput-object p3, p0, Ltn/g;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object p4, p0, Ltn/g;->d:Ljava/lang/String;

    iput-object p5, p0, Ltn/g;->e:Ljava/lang/String;

    iput-boolean p6, p0, Ltn/g;->f:Z

    iput-boolean p7, p0, Ltn/g;->g:Z

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "getChildFragmentManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object p1

    const-string v0, "beginTransaction()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/videodetail/api/IStreamDetailService;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/videodetail/api/IStreamDetailService;

    if-eqz v1, :cond_0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-interface/range {v1 .. v6}, Lcom/transsion/videodetail/api/IStreamDetailService;->b(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;ZZ)Landroidx/fragment/app/Fragment;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/w;->j()I

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;ILcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    move/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    move/from16 v9, p7

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v9}, Ltn/g;-><init>(Landroidx/fragment/app/Fragment;ILcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
