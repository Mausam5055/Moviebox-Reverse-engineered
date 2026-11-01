.class public final Lnx/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/videodetail/api/IStreamDetailService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function1;Lcom/transsion/moviedetailapi/bean/DubsInfo;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lnx/b;->f(Lkotlin/jvm/functions/Function1;Lcom/transsion/moviedetailapi/bean/DubsInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Lkotlin/jvm/functions/Function1;Lcom/transsion/moviedetailapi/bean/DubsInfo;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    sget-object v0, Lcom/transsion/moviedetail/fragment/HotFragment;->Companion:Lcom/transsion/moviedetail/fragment/HotFragment$a;

    sget-object v1, Lcom/transsion/moviedetailapi/PostRankType;->POST_RANK_TYPE_HOT:Lcom/transsion/moviedetailapi/PostRankType;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/transsion/moviedetail/fragment/HotFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/PostRankType;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;ZZ)Landroidx/fragment/app/Fragment;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "pageName"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    sget-object v3, Lcom/transsion/moviedetailapi/SubjectType;->EDUCATION:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v3

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_2

    new-instance v2, Lcom/transsion/moviedetail/fragment/SubjectEduHeaderFragment;

    invoke-direct {v2}, Lcom/transsion/moviedetail/fragment/SubjectEduHeaderFragment;-><init>()V

    goto :goto_3

    :cond_2
    :goto_1
    sget-object v3, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v3

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_4

    new-instance v2, Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;

    invoke-direct {v2}, Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;-><init>()V

    goto :goto_3

    :cond_4
    :goto_2
    new-instance v2, Lcom/transsion/videodetail/SubjectDetailHeaderFragment;

    invoke-direct {v2}, Lcom/transsion/videodetail/SubjectDetailHeaderFragment;-><init>()V

    :goto_3
    const-string v3, "data_key_resource_detectors"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v1

    :goto_4
    const-string v5, "ops"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const-string v5, "module_name"

    invoke-static {v5, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    :cond_6
    const-string v5, "id"

    invoke-static {v5, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeason()I

    move-result p1

    goto :goto_5

    :cond_7
    move p1, v0

    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "season"

    invoke-static {v5, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const-string v5, "page_from"

    invoke-static {v5, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const-string v5, "is_Intercept_detail"

    invoke-static {v5, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    const-string v5, "isOutsideVideo"

    invoke-static {v5, p5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p5

    const/16 v5, 0x8

    new-array v5, v5, [Lkotlin/Pair;

    aput-object v3, v5, v0

    const/4 v0, 0x1

    aput-object v4, v5, v0

    const/4 v0, 0x2

    aput-object p3, v5, v0

    const/4 p3, 0x3

    aput-object v1, v5, p3

    const/4 p3, 0x4

    aput-object p1, v5, p3

    const/4 p1, 0x5

    aput-object p2, v5, p1

    const/4 p1, 0x6

    aput-object p4, v5, p1

    const/4 p1, 0x7

    aput-object p5, v5, p1

    invoke-static {v5}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v2
.end method

.method public c(Landroidx/fragment/app/Fragment;ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "targetFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subjectId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/videodetail/VideoDetailAudioTrackSelectDialog;

    invoke-direct {v0}, Lcom/transsion/videodetail/VideoDetailAudioTrackSelectDialog;-><init>()V

    invoke-virtual {v0, p3}, Lcom/transsion/videodetail/VideoDetailAudioTrackSelectDialog;->A0(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;->n0(Landroidx/fragment/app/Fragment;I)V

    new-instance p1, Lnx/a;

    invoke-direct {p1, p4}, Lnx/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lcom/transsion/videodetail/VideoDetailAudioTrackSelectDialog;->z0(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public d(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;ZZ)Landroidx/fragment/app/Fragment;
    .locals 6

    sget-object v0, Lcom/transsion/moviedetail/fragment/ForYouFragment;->r:Lcom/transsion/moviedetail/fragment/ForYouFragment$a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/moviedetail/fragment/ForYouFragment$a;->a(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/transsion/moviedetail/fragment/ForYouFragment;

    move-result-object p1

    return-object p1
.end method
