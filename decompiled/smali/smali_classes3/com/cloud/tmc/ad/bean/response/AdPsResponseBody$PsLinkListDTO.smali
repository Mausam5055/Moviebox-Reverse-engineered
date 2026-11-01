.class public final Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PsLinkListDTO"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0016\u001a\u00020\u0004J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u0012R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006\"\u0004\u0008\u0015\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;",
        "Ljava/io/Serializable;",
        "()V",
        "appName",
        "",
        "getAppName",
        "()Ljava/lang/String;",
        "setAppName",
        "(Ljava/lang/String;)V",
        "dpLink",
        "getDpLink",
        "setDpLink",
        "icon",
        "getIcon",
        "setIcon",
        "image",
        "Lcom/cloud/tmc/ad/bean/AdImage;",
        "size",
        "",
        "star",
        "getStar",
        "setStar",
        "getSize",
        "setSize",
        "",
        "com.cloud.tmc.miniad"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private appName:Ljava/lang/String;

.field private dpLink:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private final image:Lcom/cloud/tmc/ad/bean/AdImage;

.field private size:J

.field private star:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDpLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;->dpLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/math/BigDecimal;

    iget-wide v1, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;->size:J

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/32 v1, 0x100000

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    const-string v1, "size_new.divide(BigDecim\u2026BigDecimal.ROUND_HALF_UP)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MB"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;->star:Ljava/lang/String;

    return-object v0
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;->appName:Ljava/lang/String;

    return-void
.end method

.method public final setDpLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;->dpLink:Ljava/lang/String;

    return-void
.end method

.method public final setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;->icon:Ljava/lang/String;

    return-void
.end method

.method public final setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;->size:J

    return-void
.end method

.method public final setStar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;->star:Ljava/lang/String;

    return-void
.end method
