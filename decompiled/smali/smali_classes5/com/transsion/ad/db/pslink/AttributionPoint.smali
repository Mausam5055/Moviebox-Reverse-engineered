.class public final Lcom/transsion/ad/db/pslink/AttributionPoint;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;,
        Lcom/transsion/ad/db/pslink/AttributionPoint$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u000267B=\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001d\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u0015J\u0010\u0010\u001a\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u0018J\u0010\u0010\u001b\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\nH\u00c6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJL\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nH\u00c6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008!\u0010\u0018J\u0010\u0010\"\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\"\u0010\u0015J\u001a\u0010&\u001a\u00020%2\u0008\u0010$\u001a\u0004\u0018\u00010#H\u00d6\u0003\u00a2\u0006\u0004\u0008&\u0010\'R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010(\u001a\u0004\u0008)\u0010\u0015R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010*\u001a\u0004\u0008+\u0010\u0018R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010(\u001a\u0004\u0008,\u0010\u0015\"\u0004\u0008-\u0010.R\u0017\u0010\u0007\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010*\u001a\u0004\u0008/\u0010\u0018R\u0017\u0010\t\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u00100\u001a\u0004\u00081\u0010\u001cR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u00102\u001a\u0004\u00083\u0010\u001e\"\u0004\u00084\u00105\u00a8\u00068"
    }
    d2 = {
        "Lcom/transsion/ad/db/pslink/AttributionPoint;",
        "Landroid/os/Parcelable;",
        "",
        "id",
        "",
        "psId",
        "failCount",
        "reportUrl",
        "Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;",
        "type",
        "",
        "updateTimestamp",
        "<init>",
        "(ILjava/lang/String;ILjava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;J)V",
        "Landroid/os/Parcel;",
        "dest",
        "flags",
        "",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "component1",
        "component2",
        "()Ljava/lang/String;",
        "component3",
        "component4",
        "component5",
        "()Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;",
        "component6",
        "()J",
        "copy",
        "(ILjava/lang/String;ILjava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;J)Lcom/transsion/ad/db/pslink/AttributionPoint;",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getId",
        "Ljava/lang/String;",
        "getPsId",
        "getFailCount",
        "setFailCount",
        "(I)V",
        "getReportUrl",
        "Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;",
        "getType",
        "J",
        "getUpdateTimestamp",
        "setUpdateTimestamp",
        "(J)V",
        "AttributionType",
        "b",
        "lib_ad_gpRelease"
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
            "Lcom/transsion/ad/db/pslink/AttributionPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private failCount:I

.field private final id:I

.field private final psId:Ljava/lang/String;

.field private final reportUrl:Ljava/lang/String;

.field private final type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

.field private updateTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/db/pslink/AttributionPoint$a;

    invoke-direct {v0}, Lcom/transsion/ad/db/pslink/AttributionPoint$a;-><init>()V

    sput-object v0, Lcom/transsion/ad/db/pslink/AttributionPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;J)V
    .locals 1

    const-string v0, "psId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->id:I

    iput-object p2, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->psId:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->failCount:I

    iput-object p4, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->reportUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    iput-wide p6, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->updateTimestamp:J

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILjava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, p3

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v8, v0

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p6

    :goto_2
    move-object v2, p0

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/transsion/ad/db/pslink/AttributionPoint;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/ad/db/pslink/AttributionPoint;ILjava/lang/String;ILjava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;JILjava/lang/Object;)Lcom/transsion/ad/db/pslink/AttributionPoint;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->id:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->psId:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->failCount:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->reportUrl:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-wide p6, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->updateTimestamp:J

    :cond_5
    move-wide v3, p6

    move-object p2, p0

    move p3, p1

    move-object p4, p9

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    move-wide p8, v3

    invoke-virtual/range {p2 .. p9}, Lcom/transsion/ad/db/pslink/AttributionPoint;->copy(ILjava/lang/String;ILjava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;J)Lcom/transsion/ad/db/pslink/AttributionPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->id:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->psId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->failCount:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->reportUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    return-object v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->updateTimestamp:J

    return-wide v0
.end method

.method public final copy(ILjava/lang/String;ILjava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;J)Lcom/transsion/ad/db/pslink/AttributionPoint;
    .locals 9

    const-string v0, "psId"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportUrl"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/ad/db/pslink/AttributionPoint;

    move-object v1, v0

    move v2, p1

    move v4, p3

    move-wide v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/transsion/ad/db/pslink/AttributionPoint;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;J)V

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
    instance-of v1, p1, Lcom/transsion/ad/db/pslink/AttributionPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/ad/db/pslink/AttributionPoint;

    iget v1, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->id:I

    iget v3, p1, Lcom/transsion/ad/db/pslink/AttributionPoint;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->psId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/db/pslink/AttributionPoint;->psId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->failCount:I

    iget v3, p1, Lcom/transsion/ad/db/pslink/AttributionPoint;->failCount:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->reportUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/db/pslink/AttributionPoint;->reportUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    iget-object v3, p1, Lcom/transsion/ad/db/pslink/AttributionPoint;->type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->updateTimestamp:J

    iget-wide v5, p1, Lcom/transsion/ad/db/pslink/AttributionPoint;->updateTimestamp:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getFailCount()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->failCount:I

    return v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->id:I

    return v0
.end method

.method public final getPsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->psId:Ljava/lang/String;

    return-object v0
.end method

.method public final getReportUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->reportUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    return-object v0
.end method

.method public final getUpdateTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->updateTimestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->psId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->failCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->reportUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->updateTimestamp:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setFailCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->failCount:I

    return-void
.end method

.method public final setUpdateTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->updateTimestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->id:I

    iget-object v1, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->psId:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->failCount:I

    iget-object v3, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->reportUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    iget-wide v5, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->updateTimestamp:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AttributionPoint(id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", psId="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", failCount="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", reportUrl="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", updateTimestamp="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->psId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->failCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->reportUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/ad/db/pslink/AttributionPoint;->updateTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
