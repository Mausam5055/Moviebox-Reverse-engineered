.class final Lcom/cloud/tmc/integration/ui/native/NativeTabView$tabLayout$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/ui/native/NativeTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/google/android/material/tabs/TabLayout;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/google/android/material/tabs/TabLayout;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/ui/native/NativeTabView;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/ui/native/NativeTabView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView$tabLayout$2;->this$0:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/google/android/material/tabs/TabLayout;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView$tabLayout$2;->this$0:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    sget v1, Lcom/cloud/tmc/integration/R$id;->mini_native_tab:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView$tabLayout$2;->invoke()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    return-object v0
.end method
