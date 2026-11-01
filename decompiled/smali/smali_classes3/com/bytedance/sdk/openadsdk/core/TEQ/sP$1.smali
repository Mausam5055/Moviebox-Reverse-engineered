.class final Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/core/TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/sP;->Sj(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/core/sP;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$1;

    const-string v2, "Lottie"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$12;

    const-string v3, "Logo"

    invoke-direct {v1, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$12;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$17;

    const-string v3, "CommentNum"

    invoke-direct {v1, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$17;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$18;

    const-string v3, "View"

    invoke-direct {v1, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$18;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$19;

    const-string v3, "CustomComponent"

    invoke-direct {v1, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$19;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$20;

    const-string v3, "Text"

    invoke-direct {v1, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$20;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$21;

    const-string v3, "Image"

    invoke-direct {v1, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$21;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$22;

    const-string v3, "FlexLayout"

    invoke-direct {v1, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$22;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$23;

    const-string v3, "FrameLayout"

    invoke-direct {v1, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$23;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$2;

    const-string v3, "RatingBar"

    invoke-direct {v1, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$3;

    const-string v3, "RatingStar"

    invoke-direct {v1, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$4;

    const-string v3, "Button"

    invoke-direct {v1, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$5;

    const-string v3, "Video"

    invoke-direct {v1, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$6;

    const-string v3, "VideoV3"

    invoke-direct {v1, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$7;

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$8;

    const-string v2, "Swiper"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$9;

    const-string v2, "Icon"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$10;

    const-string v2, "FVCountdown"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$11;

    const-string v2, "RVCountdown"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$13;

    const-string v2, "FVSkipView"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$13;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$14;

    const-string v2, "RVSkipView"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$14;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$15;

    const-string v2, "PlayableComponent"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$15;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$16;

    const-string v2, "SwiperView"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1$16;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
