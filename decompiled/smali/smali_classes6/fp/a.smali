.class public final Lfp/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/util/List;

.field private d:Lcom/transsion/publish/api/AudioEntity;

.field private e:Lcom/transsion/publish/api/VsMediaInfo;

.field private f:Lcom/transsion/publish/api/LinkEntity;

.field private g:Lcom/transsion/publish/api/PhotoEntity;

.field private h:Lcom/transsion/moviedetailapi/bean/Subject;

.field private i:Lcom/transsion/publish/api/GroupBean;

.field private j:Lcom/transsion/room/api/bean/LocationPlace;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lfp/a;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lfp/a;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/publish/api/AudioEntity;
    .locals 1

    iget-object v0, p0, Lfp/a;->d:Lcom/transsion/publish/api/AudioEntity;

    return-object v0
.end method

.method public final b()Lcom/transsion/publish/api/PhotoEntity;
    .locals 1

    iget-object v0, p0, Lfp/a;->g:Lcom/transsion/publish/api/PhotoEntity;

    return-object v0
.end method

.method public final c()Lcom/transsion/publish/api/GroupBean;
    .locals 1

    iget-object v0, p0, Lfp/a;->i:Lcom/transsion/publish/api/GroupBean;

    return-object v0
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lfp/a;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lfp/a;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public final f()Lcom/transsion/publish/api/LinkEntity;
    .locals 1

    iget-object v0, p0, Lfp/a;->f:Lcom/transsion/publish/api/LinkEntity;

    return-object v0
.end method

.method public final g()Lcom/transsion/room/api/bean/LocationPlace;
    .locals 1

    iget-object v0, p0, Lfp/a;->j:Lcom/transsion/room/api/bean/LocationPlace;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lfp/a;->c:Ljava/util/List;

    return-object v0
.end method

.method public final i()Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 1

    iget-object v0, p0, Lfp/a;->h:Lcom/transsion/moviedetailapi/bean/Subject;

    return-object v0
.end method

.method public final j()Lcom/transsion/publish/api/VsMediaInfo;
    .locals 1

    iget-object v0, p0, Lfp/a;->e:Lcom/transsion/publish/api/VsMediaInfo;

    return-object v0
.end method

.method public final k(Lcom/transsion/publish/api/AudioEntity;)V
    .locals 0

    iput-object p1, p0, Lfp/a;->d:Lcom/transsion/publish/api/AudioEntity;

    return-void
.end method

.method public final l(Lcom/transsion/publish/api/PhotoEntity;)V
    .locals 0

    iput-object p1, p0, Lfp/a;->g:Lcom/transsion/publish/api/PhotoEntity;

    return-void
.end method

.method public final m(Lcom/transsion/publish/api/GroupBean;)V
    .locals 0

    iput-object p1, p0, Lfp/a;->i:Lcom/transsion/publish/api/GroupBean;

    return-void
.end method

.method public final n(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lfp/a;->b:Ljava/lang/Integer;

    return-void
.end method

.method public final o(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lfp/a;->a:Ljava/lang/Integer;

    return-void
.end method

.method public final p(Lcom/transsion/publish/api/LinkEntity;)V
    .locals 0

    iput-object p1, p0, Lfp/a;->f:Lcom/transsion/publish/api/LinkEntity;

    return-void
.end method

.method public final q(Lcom/transsion/room/api/bean/LocationPlace;)V
    .locals 0

    iput-object p1, p0, Lfp/a;->j:Lcom/transsion/room/api/bean/LocationPlace;

    return-void
.end method

.method public final r(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lfp/a;->c:Ljava/util/List;

    return-void
.end method

.method public final s(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    iput-object p1, p0, Lfp/a;->h:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method

.method public final t(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfp/a;
    .locals 67

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    new-instance v7, Lcom/transsion/moviedetailapi/bean/Cover;

    move-object v6, v7

    const/16 v17, 0x1d7

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    invoke-direct/range {v7 .. v18}, Lcom/transsion/moviedetailapi/bean/Cover;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/GifBean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Ljn/e;->a:Ljn/e;

    move-object/from16 v5, p2

    invoke-virtual {v1, v5}, Ljn/e;->g(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/transsion/moviedetailapi/bean/Subject;

    move-object v1, v15

    const v64, 0x7ffffff

    const/16 v65, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    move-object/from16 v66, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, -0x218

    invoke-direct/range {v1 .. v65}, Lcom/transsion/moviedetailapi/bean/Subject;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/SubjectDl;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/moviedetailapi/bean/ShortTVItem;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILcom/transsion/moviedetailapi/bean/SubjectGameInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/LayoutStyle;Lcom/transsion/moviedetailapi/bean/PlayUrl;Ljava/lang/Boolean;Lcom/transsion/baselib/db/download/VipInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v66

    iput-object v1, v0, Lfp/a;->h:Lcom/transsion/moviedetailapi/bean/Subject;

    return-object v0
.end method

.method public final u(Lcom/transsion/publish/api/VsMediaInfo;)V
    .locals 0

    iput-object p1, p0, Lfp/a;->e:Lcom/transsion/publish/api/VsMediaInfo;

    return-void
.end method
