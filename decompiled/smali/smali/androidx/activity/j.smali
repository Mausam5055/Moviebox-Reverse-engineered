.class public final synthetic Landroidx/activity/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/j;->a:Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/j;->a:Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;

    invoke-static {v0}, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->a(Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;)V

    return-void
.end method
