.class public abstract Lcom/bytedance/sdk/openadsdk/core/model/sU;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;
    }
.end annotation


# static fields
.field public static final EjP:Ljava/lang/String;

.field public static final HiB:Ljava/lang/String;

.field public static final TKC:Ljava/lang/String;

.field protected static aa:I


# instance fields
.field protected Dq:Ljava/lang/String;

.field private Fmk:J

.field protected Jcg:I

.field protected Sj:Z

.field protected TEQ:J

.field protected Ym:I

.field protected sP:Z

.field protected uA:I

.field protected vS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    move-result-object v0

    const-string v1, "is"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v0, "_"

    invoke-static {v0, v3}, Lj6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    aput-object v1, v6, v4

    aput-object v3, v6, v5

    const-string v1, "sample"

    aput-object v1, v6, v2

    invoke-static {v0, v6}, Lj6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v1, v2, v4

    const-string v1, "strategy"

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lj6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB:Ljava/lang/String;

    const/16 v0, 0x14a

    sput v0, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aa:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP:Z

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sU;->vS:Z

    sget v1, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->sP:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Jcg:I

    sget-object v1, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->TKC:Ljava/lang/String;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Dq:Ljava/lang/String;

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ym:I

    const-string v1, "is_new_playable"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj:Z

    return-void
.end method

.method private static Dq(Lorg/json/JSONObject;)D
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "pack_time"

    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static EjP(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method public static EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object p0

    invoke-virtual {p0}, Ly5/b;->m()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method public static HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x5

    if-eq v1, p0, :cond_2

    const/16 p0, 0xf

    if-eq v1, p0, :cond_2

    const/16 p0, 0x32

    if-ne v1, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static Jcg(Lorg/json/JSONObject;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "uid"

    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static Sj(Lorg/json/JSONObject;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "ut"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static Sj(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Jcg(Lorg/json/JSONObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fm(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    :goto_0
    move v8, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->vll()Ly5/b;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GJs()Ly5/b;

    move-result-object v5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->nou()I

    move-result v7

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;-><init>(Ljava/lang/String;Ly5/b;Ly5/b;III)V

    return-object v0
.end method

.method public static Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/act/Sj;->Sj()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object p0

    invoke-virtual {p0}, Ly5/b;->c()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZZZZ)Z
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p4, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object p4

    invoke-virtual {p4}, Ly5/b;->z()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p4

    if-eqz p4, :cond_2

    return p3

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object p0

    invoke-virtual {p0}, Ly5/b;->m()I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_3

    return p2

    :cond_3
    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public static TKC(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MaterialMeta"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    invoke-virtual {v0}, Ly5/b;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static sP(Ljava/lang/String;)D
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Dq(Lorg/json/JSONObject;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sP(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/wE;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/wE;-><init>()V

    return-object v0
.end method

.method public static vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->QZ()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string v1, "sdk_bidding_type"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v1, p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return v0
.end method


# virtual methods
.method public abstract AE()I
.end method

.method public abstract AL()V
.end method

.method public abstract AVc()Z
.end method

.method public abstract Aw()Z
.end method

.method public abstract Bml()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/uvD;",
            ">;"
        }
    .end annotation
.end method

.method public abstract Chv()Ljava/lang/String;
.end method

.method public abstract Ci()Ljava/lang/String;
.end method

.method public abstract DKa()I
.end method

.method public abstract DKj()I
.end method

.method public abstract DPc()Lcom/bytedance/sdk/openadsdk/core/model/Fmk;
.end method

.method public abstract DSn()I
.end method

.method public abstract DhB()Lorg/json/JSONObject;
.end method

.method public abstract Dq(I)V
.end method

.method public abstract Dq(Ljava/lang/String;)V
.end method

.method public abstract Dq(Z)V
.end method

.method public abstract Dq()Z
.end method

.method public abstract EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;
.end method

.method public abstract Ei(I)V
.end method

.method public abstract Ei()Z
.end method

.method public abstract EjP(I)V
.end method

.method public abstract EjP(J)V
.end method

.method public abstract EjP(Lorg/json/JSONObject;)V
.end method

.method public abstract EjP(Z)V
.end method

.method public EjP()Z
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ley()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract Ewp()I
.end method

.method public abstract FPG()I
.end method

.method public abstract FPG(I)V
.end method

.method public abstract FcE()Z
.end method

.method public abstract Fm()I
.end method

.method public abstract Fm(I)V
.end method

.method public abstract Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;
.end method

.method public abstract Fmk(I)V
.end method

.method public abstract Fmk(Ljava/lang/String;)V
.end method

.method public abstract Fqk()Z
.end method

.method public abstract GJs()Ly5/b;
.end method

.method public abstract GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;
.end method

.method public abstract Gn()I
.end method

.method public abstract Grp()Lorg/json/JSONObject;
.end method

.method public abstract HS()Ljava/lang/String;
.end method

.method public abstract HcZ()I
.end method

.method public HiB()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk:J

    return-wide v0
.end method

.method public abstract HiB(I)V
.end method

.method public abstract HiB(Ljava/lang/String;)V
.end method

.method public abstract HiB(Lorg/json/JSONObject;)V
.end method

.method public abstract HiB(Z)V
.end method

.method public abstract HpB()I
.end method

.method public abstract HpB(I)V
.end method

.method public abstract Hs()Z
.end method

.method public abstract IOh()Z
.end method

.method public abstract IPx()Ljava/lang/String;
.end method

.method public abstract If()I
.end method

.method public abstract Ir()Ljava/lang/String;
.end method

.method public abstract JcM()I
.end method

.method public abstract JcM(I)V
.end method

.method public abstract Jcg()I
.end method

.method public abstract Jcg(I)V
.end method

.method public abstract Jcg(Ljava/lang/String;)V
.end method

.method public abstract Jcg(Z)V
.end method

.method public abstract Jw()V
.end method

.method public abstract KTL()Z
.end method

.method public abstract LD()I
.end method

.method public abstract LD(I)V
.end method

.method public abstract Lip()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract LqL()I
.end method

.method public abstract LqL(I)V
.end method

.method public abstract LqL(Ljava/lang/String;)V
.end method

.method public abstract MGU()Z
.end method

.method public abstract Ms()Z
.end method

.method public abstract Mts()I
.end method

.method public abstract Mts(I)V
.end method

.method public abstract MuB()Z
.end method

.method public abstract NPW()J
.end method

.method public abstract ODI()Z
.end method

.method public abstract Os()Ljava/lang/String;
.end method

.method public abstract Ov()V
.end method

.method public abstract Ovo()Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;
.end method

.method public abstract Ph()Z
.end method

.method public abstract QZ()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract RiZ()J
.end method

.method public abstract RiZ(I)V
.end method

.method public abstract RiZ(Ljava/lang/String;)V
.end method

.method public abstract RqK()I
.end method

.method public abstract RrR()Z
.end method

.method public abstract SP()Lorg/json/JSONObject;
.end method

.method public abstract SPg()J
.end method

.method public abstract Sj()I
.end method

.method public abstract Sj(D)V
.end method

.method public abstract Sj(F)V
.end method

.method public abstract Sj(I)V
.end method

.method public abstract Sj(II)V
.end method

.method public Sj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk:J

    return-void
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/EjP;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/Fmk;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/HiB;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/LqL;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/RiZ;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/Ym;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/Zq;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/aa;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/dNu;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/kF;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/uA;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/uP;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/vS;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/zR;)V
.end method

.method public abstract Sj(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V
.end method

.method public abstract Sj(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract Sj(Ly5/b;)V
.end method

.method public abstract Sj(Z)V
.end method

.method public abstract Snq()Z
.end method

.method public abstract Ss()Z
.end method

.method public abstract TEQ()Ljava/lang/String;
.end method

.method public abstract TEQ(I)V
.end method

.method public abstract TEQ(Ljava/lang/String;)V
.end method

.method public abstract TEQ(Z)V
.end method

.method public abstract TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;
.end method

.method public TKC()I
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uvD()Lcom/bytedance/sdk/openadsdk/core/model/HiB;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->Sj()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public abstract TKC(I)V
.end method

.method public abstract TKC(J)V
.end method

.method public abstract TKC(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)V
.end method

.method public abstract TKC(Lorg/json/JSONObject;)V
.end method

.method public abstract TKC(Ly5/b;)V
.end method

.method public abstract TKC(Z)V
.end method

.method public abstract TO()J
.end method

.method public abstract TT()Z
.end method

.method public abstract TX()Ljava/lang/String;
.end method

.method public abstract TzV()I
.end method

.method public abstract TzV(I)V
.end method

.method public abstract TzV(Ljava/lang/String;)V
.end method

.method public abstract UHs()Ly5/b;
.end method

.method public abstract UHs(I)V
.end method

.method public abstract Uc()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract UmR()Z
.end method

.method public abstract Vd()Z
.end method

.method public abstract VnJ()Z
.end method

.method public abstract WM()Z
.end method

.method public abstract WMZ()Ljava/lang/String;
.end method

.method public abstract WMZ(I)V
.end method

.method public abstract WO()Z
.end method

.method public abstract Wjd()Lcom/bytedance/sdk/openadsdk/core/model/uA;
.end method

.method public abstract Wjd(I)V
.end method

.method public abstract WxP()I
.end method

.method public abstract XgY()Ljava/lang/String;
.end method

.method public abstract Xqg()Z
.end method

.method public abstract YLl()Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;
.end method

.method public abstract Yf(I)V
.end method

.method public abstract Yf(Ljava/lang/String;)V
.end method

.method public abstract Yf()Z
.end method

.method public abstract Ym()Ljava/lang/String;
.end method

.method public abstract Ym(I)V
.end method

.method public abstract Ym(Ljava/lang/String;)V
.end method

.method public abstract Ym(Z)V
.end method

.method public abstract Za()Z
.end method

.method public abstract Zq()Lcom/bytedance/sdk/openadsdk/core/model/vS;
.end method

.method public abstract Zq(I)V
.end method

.method public abstract Zq(Ljava/lang/String;)V
.end method

.method public abstract aNB()Ljava/lang/String;
.end method

.method public abstract aZ()Ljava/lang/String;
.end method

.method public abstract aa(I)V
.end method

.method public abstract aa(Ljava/lang/String;)V
.end method

.method public abstract aa(Z)V
.end method

.method public aa()Z
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TEQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ym()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract at()Lcom/bytedance/sdk/openadsdk/utils/WMZ;
.end method

.method public abstract cF()Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;
.end method

.method public abstract cKW()Ljava/lang/String;
.end method

.method public abstract cX()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract caU()V
.end method

.method public abstract cra()D
.end method

.method public abstract dLt()Lorg/json/JSONObject;
.end method

.method public abstract dNu()I
.end method

.method public abstract dNu(I)V
.end method

.method public abstract dNu(Ljava/lang/String;)V
.end method

.method public abstract dU()I
.end method

.method public abstract db(I)V
.end method

.method public abstract db()Z
.end method

.method public abstract dwU()Ljava/lang/String;
.end method

.method public abstract dwU(I)V
.end method

.method public abstract dx()I
.end method

.method public abstract dx(I)V
.end method

.method public abstract dx(Ljava/lang/String;)V
.end method

.method public abstract eEJ()Z
.end method

.method public abstract eI()Z
.end method

.method public abstract eJi()I
.end method

.method public abstract eMB()Ljava/lang/String;
.end method

.method public abstract eNi()Lcom/bytedance/sdk/openadsdk/core/model/kF;
.end method

.method public abstract efv()Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;
.end method

.method public abstract ewz()Z
.end method

.method public abstract fAj()Lcom/bytedance/sdk/openadsdk/core/model/sP;
.end method

.method public abstract fF()I
.end method

.method public abstract fF(I)V
.end method

.method public abstract gR()Ljava/lang/String;
.end method

.method public abstract gY()Lcom/bytedance/sdk/openadsdk/core/model/uvD;
.end method

.method public abstract gq()I
.end method

.method public abstract hLo()Lcom/bytedance/sdk/openadsdk/core/model/zR;
.end method

.method public abstract hif()Lcom/bytedance/sdk/component/uA/sP/Sj;
.end method

.method public abstract hzV()Z
.end method

.method public abstract ib()I
.end method

.method public abstract ib(I)V
.end method

.method public abstract ib(Ljava/lang/String;)V
.end method

.method public abstract jU()V
.end method

.method public abstract jb()Ljava/lang/String;
.end method

.method public abstract jb(I)V
.end method

.method public abstract jjS()I
.end method

.method public abstract kF()I
.end method

.method public abstract kF(I)V
.end method

.method public abstract kF(Ljava/lang/String;)V
.end method

.method public abstract kb()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract ley()I
.end method

.method public abstract ley(I)V
.end method

.method public abstract ley(Ljava/lang/String;)V
.end method

.method public abstract liH()I
.end method

.method public abstract mZN()Ljava/lang/String;
.end method

.method public abstract mj()I
.end method

.method public abstract nP()Lorg/json/JSONObject;
.end method

.method public abstract nbp()I
.end method

.method public abstract ndK()Lcom/bytedance/sdk/openadsdk/core/model/LqL;
.end method

.method public abstract ndK(I)V
.end method

.method public abstract nou()I
.end method

.method public abstract nru()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract nw()I
.end method

.method public abstract oDQ()Z
.end method

.method public abstract oWa()I
.end method

.method public abstract pR()Z
.end method

.method public abstract pfr()I
.end method

.method public abstract qRN()I
.end method

.method public abstract qRN(I)V
.end method

.method public abstract rB()Z
.end method

.method public abstract rN()Z
.end method

.method public abstract rd()I
.end method

.method public abstract ron()Ljava/lang/String;
.end method

.method public abstract roy()Ljava/lang/String;
.end method

.method public abstract sP()I
.end method

.method public abstract sP(D)V
.end method

.method public abstract sP(I)V
.end method

.method public abstract sP(J)V
.end method

.method public abstract sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;)V
.end method

.method public abstract sP(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)V
.end method

.method public abstract sP(Lorg/json/JSONObject;)V
.end method

.method public abstract sP(Ly5/b;)V
.end method

.method public abstract sP(Z)V
.end method

.method public abstract sU()Lcom/bytedance/sdk/openadsdk/core/model/uP;
.end method

.method public abstract sU(I)V
.end method

.method public abstract sU(Ljava/lang/String;)V
.end method

.method public abstract sdp()I
.end method

.method public abstract sef()Lcom/bytedance/sdk/openadsdk/core/model/dNu;
.end method

.method public abstract sef(I)V
.end method

.method public abstract sef(Ljava/lang/String;)V
.end method

.method public abstract tPD()Z
.end method

.method public abstract tR()Z
.end method

.method public abstract tX()Lcom/bytedance/sdk/openadsdk/core/model/Zq;
.end method

.method public abstract tY()F
.end method

.method public abstract tc()Ljava/lang/String;
.end method

.method public abstract tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;
.end method

.method public abstract uA(I)V
.end method

.method public abstract uA(Ljava/lang/String;)V
.end method

.method public abstract uA(Z)V
.end method

.method public abstract uA()Z
.end method

.method public abstract uP()Ljava/lang/String;
.end method

.method public abstract uP(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract uP(I)V
.end method

.method public abstract uWH()I
.end method

.method public abstract uvD()Lcom/bytedance/sdk/openadsdk/core/model/HiB;
.end method

.method public abstract uvD(I)V
.end method

.method public abstract uvD(Ljava/lang/String;)V
.end method

.method public abstract vP()J
.end method

.method public abstract vS(I)V
.end method

.method public abstract vS(Ljava/lang/String;)V
.end method

.method public abstract vS(Lorg/json/JSONObject;)V
.end method

.method public abstract vS(Z)V
.end method

.method public abstract vb()I
.end method

.method public abstract vll()Ly5/b;
.end method

.method public abstract wE()I
.end method

.method public abstract wE(I)V
.end method

.method public abstract wE(Ljava/lang/String;)V
.end method

.method public abstract xD()Lcom/bytedance/sdk/openadsdk/AdSlot;
.end method

.method public abstract xD(I)V
.end method

.method public abstract xH()Z
.end method

.method public abstract xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;
.end method

.method public abstract xhi(I)V
.end method

.method public abstract xu()Ljava/lang/String;
.end method

.method public abstract xzt()I
.end method

.method public abstract yfI()Z
.end method

.method public abstract yr()Z
.end method

.method public abstract zR()I
.end method

.method public abstract zR(I)V
.end method

.method public abstract zR(Ljava/lang/String;)V
.end method

.method public abstract zwV()I
.end method
