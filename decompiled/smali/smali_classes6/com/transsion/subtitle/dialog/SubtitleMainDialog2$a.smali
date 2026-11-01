.class public final Lcom/transsion/subtitle/dialog/SubtitleMainDialog2$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZZLjava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;
    .locals 2

    const-string v0, "dubs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    invoke-direct {v0}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;-><init>()V

    invoke-static {v0, p3}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->r0(Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;Ljava/util/List;)V

    invoke-virtual {v0, p4}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->G0(Lcom/transsion/baselib/db/download/DownloadBean;)V

    const-string p3, "EXTRA_FRAGMENT_TYPE"

    const-string p4, "NO_SUBTITLE"

    invoke-static {p3, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p4, "KEY_VIDEO_START_CHECK"

    invoke-static {p4, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p4, "EXTRA_IS_LAND"

    invoke-static {p4, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const-string p4, "KEY_PAGE_NAME"

    invoke-static {p4, p5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    const/4 p5, 0x4

    new-array p5, p5, [Lkotlin/Pair;

    const/4 v1, 0x0

    aput-object p3, p5, v1

    const/4 p3, 0x1

    aput-object p2, p5, p3

    const/4 p2, 0x2

    aput-object p1, p5, p2

    const/4 p1, 0x3

    aput-object p4, p5, p1

    invoke-static {p5}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final b(ZZLjava/util/List;Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/subtitle/helper/LocalVideoUiType;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;
    .locals 1

    const-string v0, "list"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dubs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    invoke-direct {v0}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;-><init>()V

    invoke-static {v0, p4}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->r0(Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;Ljava/util/List;)V

    invoke-virtual {v0, p5}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->G0(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-virtual {v0, p2, p3}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->I0(ZLjava/util/List;)V

    invoke-static {v0, p6, p7}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->s0(Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;Lcom/transsion/subtitle/helper/LocalVideoUiType;Ljava/lang/Integer;)V

    const-string p2, "EXTRA_FRAGMENT_TYPE"

    const-string p3, "SELECT_SUBTITLE"

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "EXTRA_IS_LAND"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const-string p3, "KEY_PAGE_NAME"

    invoke-static {p3, p8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 p4, 0x3

    new-array p4, p4, [Lkotlin/Pair;

    const/4 p6, 0x0

    aput-object p2, p4, p6

    const/4 p2, 0x1

    aput-object p1, p4, p2

    const/4 p1, 0x2

    aput-object p3, p4, p1

    invoke-static {p4}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    if-eqz p5, :cond_0

    sget-object p1, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {p1}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object p1

    invoke-interface {p1, p5}, Lcom/transsion/subtitle/h;->i(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_0
    return-object v0
.end method
