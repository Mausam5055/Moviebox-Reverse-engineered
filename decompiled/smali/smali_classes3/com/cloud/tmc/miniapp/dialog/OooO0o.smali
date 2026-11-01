.class public final Lcom/cloud/tmc/miniapp/dialog/OooO0o;
.super Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
        "Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public OooO0O0:Ljava/lang/String;

.field public OooO0OO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO0O0;

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0o;->OooO00o:Lkotlin/Lazy;

    const-string p1, "text"

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0o;->OooO0O0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0o;)V

    return-object p1
.end method
