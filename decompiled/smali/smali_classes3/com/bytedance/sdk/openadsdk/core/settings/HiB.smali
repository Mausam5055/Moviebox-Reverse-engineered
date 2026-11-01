.class public interface abstract Lcom/bytedance/sdk/openadsdk/core/settings/HiB;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;,
        Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;
    }
.end annotation


# static fields
.field public static final Sj:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final sP:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/HiB;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$2;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$2;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/HiB;->sP:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    return-void
.end method


# virtual methods
.method public abstract Sj(Lorg/json/JSONObject;)V
.end method
