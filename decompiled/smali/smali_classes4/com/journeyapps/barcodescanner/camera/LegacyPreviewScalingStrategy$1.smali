.class Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->b(Ljava/util/List;Lxe/q;)Lxe/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lxe/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;

.field final synthetic val$desired:Lxe/q;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;Lxe/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->this$0:Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->val$desired:Lxe/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lxe/q;

    check-cast p2, Lxe/q;

    invoke-virtual {p0, p1, p2}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->compare(Lxe/q;Lxe/q;)I

    move-result p1

    return p1
.end method

.method public compare(Lxe/q;Lxe/q;)I
    .locals 4

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->val$desired:Lxe/q;

    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->e(Lxe/q;Lxe/q;)Lxe/q;

    move-result-object v0

    iget v0, v0, Lxe/q;->a:I

    iget v1, p1, Lxe/q;->a:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;->val$desired:Lxe/q;

    invoke-static {p2, v1}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->e(Lxe/q;Lxe/q;)Lxe/q;

    move-result-object v1

    iget v1, v1, Lxe/q;->a:I

    iget v2, p2, Lxe/q;->a:I

    sub-int/2addr v1, v2

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lxe/q;->a(Lxe/q;)I

    move-result p1

    return p1

    :cond_0
    const/4 v2, -0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x1

    if-nez v1, :cond_2

    return v3

    :cond_2
    if-gez v0, :cond_3

    if-gez v1, :cond_3

    invoke-virtual {p1, p2}, Lxe/q;->a(Lxe/q;)I

    move-result p1

    return p1

    :cond_3
    if-lez v0, :cond_4

    if-lez v1, :cond_4

    invoke-virtual {p1, p2}, Lxe/q;->a(Lxe/q;)I

    move-result p1

    neg-int p1, p1

    return p1

    :cond_4
    if-gez v0, :cond_5

    return v2

    :cond_5
    return v3
.end method
