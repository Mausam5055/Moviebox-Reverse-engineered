.class public final Lcom/transsion/search_pugc/bean/UGCPager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0014\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B9\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\nH\u00c6\u0003J;\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0006\u0010\u001c\u001a\u00020\u0008J\u0013\u0010\u001d\u001a\u00020\u00032\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00d6\u0003J\t\u0010 \u001a\u00020\u0008H\u00d6\u0001J\t\u0010!\u001a\u00020\u0005H\u00d6\u0001J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0008R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/search_pugc/bean/UGCPager;",
        "Landroid/os/Parcelable;",
        "hasMore",
        "",
        "nextPage",
        "",
        "page",
        "perPage",
        "",
        "totalCount",
        "",
        "<init>",
        "(ZLjava/lang/String;Ljava/lang/String;IJ)V",
        "getHasMore",
        "()Z",
        "getNextPage",
        "()Ljava/lang/String;",
        "getPage",
        "getPerPage",
        "()I",
        "getTotalCount",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/search_pugc/bean/UGCPager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hasMore:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasMore"
    .end annotation
.end field

.field private final nextPage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nextPage"
    .end annotation
.end field

.field private final page:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page"
    .end annotation
.end field

.field private final perPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "perPage"
    .end annotation
.end field

.field private final totalCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalCount"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/search_pugc/bean/UGCPager$a;

    invoke-direct {v0}, Lcom/transsion/search_pugc/bean/UGCPager$a;-><init>()V

    sput-object v0, Lcom/transsion/search_pugc/bean/UGCPager;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/transsion/search_pugc/bean/UGCPager;-><init>(ZLjava/lang/String;Ljava/lang/String;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;IJ)V
    .locals 1

    const-string v0, "nextPage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/search_pugc/bean/UGCPager;->hasMore:Z

    iput-object p2, p0, Lcom/transsion/search_pugc/bean/UGCPager;->nextPage:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/search_pugc/bean/UGCPager;->page:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/search_pugc/bean/UGCPager;->perPage:I

    iput-wide p5, p0, Lcom/transsion/search_pugc/bean/UGCPager;->totalCount:J

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p8, v0

    goto :goto_0

    :cond_0
    move p8, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    const-string v1, ""

    if-eqz p1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, p3

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v0, p4

    :goto_3
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const-wide/16 p5, 0x0

    :cond_4
    move-wide p6, p5

    move-object p1, p0

    move p2, p8

    move-object p3, v2

    move-object p4, v1

    move p5, v0

    invoke-direct/range {p1 .. p7}, Lcom/transsion/search_pugc/bean/UGCPager;-><init>(ZLjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/search_pugc/bean/UGCPager;ZLjava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/transsion/search_pugc/bean/UGCPager;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-boolean p1, p0, Lcom/transsion/search_pugc/bean/UGCPager;->hasMore:Z

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/transsion/search_pugc/bean/UGCPager;->nextPage:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/transsion/search_pugc/bean/UGCPager;->page:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/transsion/search_pugc/bean/UGCPager;->perPage:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-wide p5, p0, Lcom/transsion/search_pugc/bean/UGCPager;->totalCount:J

    :cond_4
    move-wide v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move-wide p7, v2

    invoke-virtual/range {p2 .. p8}, Lcom/transsion/search_pugc/bean/UGCPager;->copy(ZLjava/lang/String;Ljava/lang/String;IJ)Lcom/transsion/search_pugc/bean/UGCPager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/search_pugc/bean/UGCPager;->hasMore:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/bean/UGCPager;->nextPage:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/bean/UGCPager;->page:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/transsion/search_pugc/bean/UGCPager;->perPage:I

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/search_pugc/bean/UGCPager;->totalCount:J

    return-wide v0
.end method

.method public final copy(ZLjava/lang/String;Ljava/lang/String;IJ)Lcom/transsion/search_pugc/bean/UGCPager;
    .locals 8

    const-string v0, "nextPage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/search_pugc/bean/UGCPager;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/transsion/search_pugc/bean/UGCPager;-><init>(ZLjava/lang/String;Ljava/lang/String;IJ)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/search_pugc/bean/UGCPager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/search_pugc/bean/UGCPager;

    iget-boolean v1, p0, Lcom/transsion/search_pugc/bean/UGCPager;->hasMore:Z

    iget-boolean v3, p1, Lcom/transsion/search_pugc/bean/UGCPager;->hasMore:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/search_pugc/bean/UGCPager;->nextPage:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/search_pugc/bean/UGCPager;->nextPage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/search_pugc/bean/UGCPager;->page:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/search_pugc/bean/UGCPager;->page:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/search_pugc/bean/UGCPager;->perPage:I

    iget v3, p1, Lcom/transsion/search_pugc/bean/UGCPager;->perPage:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/transsion/search_pugc/bean/UGCPager;->totalCount:J

    iget-wide v5, p1, Lcom/transsion/search_pugc/bean/UGCPager;->totalCount:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getHasMore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/search_pugc/bean/UGCPager;->hasMore:Z

    return v0
.end method

.method public final getNextPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/bean/UGCPager;->nextPage:Ljava/lang/String;

    return-object v0
.end method

.method public final getPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/bean/UGCPager;->page:Ljava/lang/String;

    return-object v0
.end method

.method public final getPerPage()I
    .locals 1

    iget v0, p0, Lcom/transsion/search_pugc/bean/UGCPager;->perPage:I

    return v0
.end method

.method public final getTotalCount()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/search_pugc/bean/UGCPager;->totalCount:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/search_pugc/bean/UGCPager;->hasMore:Z

    invoke-static {v0}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/search_pugc/bean/UGCPager;->nextPage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/search_pugc/bean/UGCPager;->page:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/search_pugc/bean/UGCPager;->perPage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/search_pugc/bean/UGCPager;->totalCount:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-boolean v0, p0, Lcom/transsion/search_pugc/bean/UGCPager;->hasMore:Z

    iget-object v1, p0, Lcom/transsion/search_pugc/bean/UGCPager;->nextPage:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/search_pugc/bean/UGCPager;->page:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/search_pugc/bean/UGCPager;->perPage:I

    iget-wide v4, p0, Lcom/transsion/search_pugc/bean/UGCPager;->totalCount:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UGCPager(hasMore="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", nextPage="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", page="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", perPage="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", totalCount="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/transsion/search_pugc/bean/UGCPager;->hasMore:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/search_pugc/bean/UGCPager;->nextPage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/search_pugc/bean/UGCPager;->page:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/search_pugc/bean/UGCPager;->perPage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/transsion/search_pugc/bean/UGCPager;->totalCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
