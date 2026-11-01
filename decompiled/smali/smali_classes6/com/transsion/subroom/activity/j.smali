.class public final synthetic Lcom/transsion/subroom/activity/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/subroom/activity/MainActivity;

.field public final synthetic b:Lcom/google/android/material/tabs/TabLayout$TabView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subroom/activity/MainActivity;Lcom/google/android/material/tabs/TabLayout$TabView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subroom/activity/j;->a:Lcom/transsion/subroom/activity/MainActivity;

    iput-object p2, p0, Lcom/transsion/subroom/activity/j;->b:Lcom/google/android/material/tabs/TabLayout$TabView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subroom/activity/j;->a:Lcom/transsion/subroom/activity/MainActivity;

    iget-object v1, p0, Lcom/transsion/subroom/activity/j;->b:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-static {v0, v1}, Lcom/transsion/subroom/activity/MainActivity;->y0(Lcom/transsion/subroom/activity/MainActivity;Lcom/google/android/material/tabs/TabLayout$TabView;)V

    return-void
.end method
