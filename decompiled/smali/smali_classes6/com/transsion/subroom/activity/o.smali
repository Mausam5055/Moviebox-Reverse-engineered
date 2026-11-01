.class public final synthetic Lcom/transsion/subroom/activity/o;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/google/android/material/tabs/TabLayout$TabView;

.field public final synthetic b:Lcom/transsion/subroom/activity/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/tabs/TabLayout$TabView;Lcom/transsion/subroom/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subroom/activity/o;->a:Lcom/google/android/material/tabs/TabLayout$TabView;

    iput-object p2, p0, Lcom/transsion/subroom/activity/o;->b:Lcom/transsion/subroom/activity/MainActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/subroom/activity/o;->a:Lcom/google/android/material/tabs/TabLayout$TabView;

    iget-object v1, p0, Lcom/transsion/subroom/activity/o;->b:Lcom/transsion/subroom/activity/MainActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/transsion/subroom/activity/MainActivity;->s0(Lcom/google/android/material/tabs/TabLayout$TabView;Lcom/transsion/subroom/activity/MainActivity;Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
