.class public final synthetic Lz8/g;
.super Ljava/lang/Object;

# interfaces
.implements Lb9/a$a;


# instance fields
.field public final synthetic a:Lz8/o;

.field public final synthetic b:Lcom/google/android/datatransport/runtime/o;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lz8/o;Lcom/google/android/datatransport/runtime/o;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/g;->a:Lz8/o;

    iput-object p2, p0, Lz8/g;->b:Lcom/google/android/datatransport/runtime/o;

    iput p3, p0, Lz8/g;->c:I

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lz8/g;->a:Lz8/o;

    iget-object v1, p0, Lz8/g;->b:Lcom/google/android/datatransport/runtime/o;

    iget v2, p0, Lz8/g;->c:I

    invoke-static {v0, v1, v2}, Lz8/o;->f(Lz8/o;Lcom/google/android/datatransport/runtime/o;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
