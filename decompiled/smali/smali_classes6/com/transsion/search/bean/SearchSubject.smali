.class public final Lcom/transsion/search/bean/SearchSubject;
.super Lcom/transsion/moviedetailapi/bean/Subject;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u00012\u00020\u0002B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0017\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0008H\u00c6\u0003J)\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/search/bean/SearchSubject;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "Ljava/io/Serializable;",
        "viewType",
        "",
        "verticalRank",
        "Lcom/transsion/search/bean/VerticalRank;",
        "showDivider",
        "",
        "<init>",
        "(ILcom/transsion/search/bean/VerticalRank;Z)V",
        "getViewType",
        "()I",
        "setViewType",
        "(I)V",
        "getVerticalRank",
        "()Lcom/transsion/search/bean/VerticalRank;",
        "setVerticalRank",
        "(Lcom/transsion/search/bean/VerticalRank;)V",
        "getShowDivider",
        "()Z",
        "setShowDivider",
        "(Z)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "Search_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private showDivider:Z

.field private verticalRank:Lcom/transsion/search/bean/VerticalRank;

.field private viewType:I


# direct methods
.method public constructor <init>(ILcom/transsion/search/bean/VerticalRank;Z)V
    .locals 65

    move-object/from16 v0, p0

    const v63, 0x7ffffff

    const/16 v64, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

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

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

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

    const/16 v62, -0x1

    invoke-direct/range {v0 .. v64}, Lcom/transsion/moviedetailapi/bean/Subject;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/SubjectDl;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/moviedetailapi/bean/ShortTVItem;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILcom/transsion/moviedetailapi/bean/SubjectGameInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/LayoutStyle;Lcom/transsion/moviedetailapi/bean/PlayUrl;Ljava/lang/Boolean;Lcom/transsion/baselib/db/download/VipInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move/from16 v1, p1

    iput v1, v0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    move/from16 v1, p3

    iput-boolean v1, v0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/search/bean/SearchSubject;ILcom/transsion/search/bean/VerticalRank;ZILjava/lang/Object;)Lcom/transsion/search/bean/SearchSubject;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/search/bean/SearchSubject;->copy(ILcom/transsion/search/bean/VerticalRank;Z)Lcom/transsion/search/bean/SearchSubject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    return v0
.end method

.method public final component2()Lcom/transsion/search/bean/VerticalRank;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    return v0
.end method

.method public final copy(ILcom/transsion/search/bean/VerticalRank;Z)Lcom/transsion/search/bean/SearchSubject;
    .locals 1

    new-instance v0, Lcom/transsion/search/bean/SearchSubject;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/search/bean/SearchSubject;-><init>(ILcom/transsion/search/bean/VerticalRank;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/search/bean/SearchSubject;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/search/bean/SearchSubject;

    iget v1, p0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    iget v3, p1, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    iget-object v3, p1, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    iget-boolean p1, p1, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getShowDivider()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    return v0
.end method

.method public final getVerticalRank()Lcom/transsion/search/bean/VerticalRank;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    return-object v0
.end method

.method public final getViewType()I
    .locals 1

    iget v0, p0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/search/bean/VerticalRank;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setShowDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    return-void
.end method

.method public final setVerticalRank(Lcom/transsion/search/bean/VerticalRank;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    return-void
.end method

.method public final setViewType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/transsion/search/bean/SearchSubject;->viewType:I

    iget-object v1, p0, Lcom/transsion/search/bean/SearchSubject;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    iget-boolean v2, p0, Lcom/transsion/search/bean/SearchSubject;->showDivider:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SearchSubject(viewType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", verticalRank="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", showDivider="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
