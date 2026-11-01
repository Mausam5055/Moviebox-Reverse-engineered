.class Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$1;->Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$1;->Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

    check-cast p2, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$1;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)I

    move-result p1

    return p1
.end method
