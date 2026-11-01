.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$g;


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO00o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO00o;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    add-int/2addr p1, p2

    if-gtz p1, :cond_1

    move v1, v2

    :cond_1
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    iput-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0oO:Z

    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0oo:Z

    return-void
.end method
