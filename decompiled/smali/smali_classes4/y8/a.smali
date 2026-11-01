.class public final synthetic Ly8/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ly8/c;

.field public final synthetic b:Lcom/google/android/datatransport/runtime/o;

.field public final synthetic c:Lr8/j;

.field public final synthetic d:Lcom/google/android/datatransport/runtime/i;


# direct methods
.method public synthetic constructor <init>(Ly8/c;Lcom/google/android/datatransport/runtime/o;Lr8/j;Lcom/google/android/datatransport/runtime/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/a;->a:Ly8/c;

    iput-object p2, p0, Ly8/a;->b:Lcom/google/android/datatransport/runtime/o;

    iput-object p3, p0, Ly8/a;->c:Lr8/j;

    iput-object p4, p0, Ly8/a;->d:Lcom/google/android/datatransport/runtime/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ly8/a;->a:Ly8/c;

    iget-object v1, p0, Ly8/a;->b:Lcom/google/android/datatransport/runtime/o;

    iget-object v2, p0, Ly8/a;->c:Lr8/j;

    iget-object v3, p0, Ly8/a;->d:Lcom/google/android/datatransport/runtime/i;

    invoke-static {v0, v1, v2, v3}, Ly8/c;->c(Ly8/c;Lcom/google/android/datatransport/runtime/o;Lr8/j;Lcom/google/android/datatransport/runtime/i;)V

    return-void
.end method
