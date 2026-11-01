.class public final Lcom/bytedance/sdk/component/sP/Sj/HiB;
.super Lcom/bytedance/sdk/component/sP/Sj/sef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/sP/Sj/HiB$Sj;
    }
.end annotation


# instance fields
.field Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/sP/Sj/sef;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/HiB;->Sj:Ljava/util/List;

    iput-object p2, p0, Lcom/bytedance/sdk/component/sP/Sj/HiB;->sP:Ljava/util/List;

    return-void
.end method
