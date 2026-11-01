.class public Lcom/mbridge/msdk/foundation/entity/m;
.super Ljava/lang/Object;


# static fields
.field public static N:I = 0x1

.field public static O:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:I

.field private K:J

.field private L:Ljava/lang/String;

.field private M:I

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ILjava/lang/String;JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    const/4 v0, 0x1

    if-eq p7, v0, :cond_1

    const/16 v0, 0x11f

    if-eq p7, v0, :cond_1

    const/16 v0, 0x5e

    if-eq p7, v0, :cond_1

    const/16 v0, 0x5f

    if-eq p7, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p7, "2000025"

    iput-object p7, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p7, "m_download_end"

    iput-object p7, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    move-result p7

    iput p7, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    invoke-static {p1, p7}, Lcom/mbridge/msdk/foundation/tools/k0;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->v:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/mbridge/msdk/out/Campaign;->getVideoLength()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->J:I

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->y:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->z:Ljava/lang/String;

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->w:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    :try_start_0
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string p7, "utf-8"

    invoke-static {p1, p7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    iput p3, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    iput-object p4, p0, Lcom/mbridge/msdk/foundation/entity/m;->i:Ljava/lang/String;

    const-wide/16 p3, 0x0

    cmp-long p1, p5, p3

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoSize()I

    move-result p1

    int-to-long p5, p1

    :cond_4
    iput-wide p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->K:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    iput p2, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    iput-object p11, p0, Lcom/mbridge/msdk/foundation/entity/m;->v:Ljava/lang/String;

    iput p3, p0, Lcom/mbridge/msdk/foundation/entity/m;->p:I

    iput p4, p0, Lcom/mbridge/msdk/foundation/entity/m;->M:I

    iput p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->J:I

    :try_start_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "utf-8"

    invoke-static {p6, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iput-object p7, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    iput p8, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    iput-object p9, p0, Lcom/mbridge/msdk/foundation/entity/m;->i:Ljava/lang/String;

    int-to-long p1, p10

    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->K:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    iput p2, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    iput-object p8, p0, Lcom/mbridge/msdk/foundation/entity/m;->v:Ljava/lang/String;

    iput p3, p0, Lcom/mbridge/msdk/foundation/entity/m;->J:I

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "utf-8"

    invoke-static {p4, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iput p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    iput-object p6, p0, Lcom/mbridge/msdk/foundation/entity/m;->i:Ljava/lang/String;

    int-to-long p1, p7

    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->K:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    iput-object p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->v:Ljava/lang/String;

    iput p2, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "utf-8"

    invoke-static {p3, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iput-object p4, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    iput p2, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/entity/m;->i:Ljava/lang/String;

    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "utf-8"

    invoke-static {p4, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iput-object p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/mbridge/msdk/foundation/entity/m;->I:Ljava/lang/String;

    iput-object p7, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    iput-object p8, p0, Lcom/mbridge/msdk/foundation/entity/m;->j:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget p2, Lcom/mbridge/msdk/foundation/same/a;->L:I

    if-le p1, p2, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/entity/m;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/entity/m;->y:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/foundation/entity/m;->z:Ljava/lang/String;

    iput-object p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->I:Ljava/lang/String;

    iput p6, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/entity/m;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/entity/m;->y:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/foundation/entity/m;->z:Ljava/lang/String;

    iput-object p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->I:Ljava/lang/String;

    iput p6, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    iput-object p8, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    iput p7, p0, Lcom/mbridge/msdk/foundation/entity/m;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->d:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/entity/m;->m:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/entity/m;->H:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/foundation/entity/m;->r:Ljava/lang/String;

    iput-object p5, p0, Lcom/mbridge/msdk/foundation/entity/m;->I:Ljava/lang/String;

    iput-object p6, p0, Lcom/mbridge/msdk/foundation/entity/m;->f:Ljava/lang/String;

    iput p7, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    iput-object p8, p0, Lcom/mbridge/msdk/foundation/entity/m;->v:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->H:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->I:Ljava/lang/String;

    return-object v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->J:I

    return v0
.end method

.method public D()J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->K:J

    return-wide v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->L:Ljava/lang/String;

    return-object v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->M:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return-object p2

    :cond_2
    return-object p1

    :catch_0
    return-object p2
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->b:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->f:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->e:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->h:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->i:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->j:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->l:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->l:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->s:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->o:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->v:Ljava/lang/String;

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->p:I

    return v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->y:Ljava/lang/String;

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->r:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->z:Ljava/lang/String;

    return-void
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->t:I

    return v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->A:Ljava/lang/String;

    return-void
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    return v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->B:Ljava/lang/String;

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->v:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->D:Ljava/lang/String;

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->w:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->E:Ljava/lang/String;

    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->G:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RewardReportData [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isCompleteView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", watchedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->M:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->J:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offerUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mbridge/msdk/foundation/entity/m;->K:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->y:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->I:Ljava/lang/String;

    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->z:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/m;->L:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->A:Ljava/lang/String;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->C:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->F:I

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/m;->G:Ljava/lang/String;

    return-object v0
.end method
