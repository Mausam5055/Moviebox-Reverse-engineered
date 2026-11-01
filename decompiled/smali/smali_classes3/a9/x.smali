.class public final synthetic La9/x;
.super Ljava/lang/Object;

# interfaces
.implements La9/m0$b;


# instance fields
.field public final synthetic a:La9/m0;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/google/android/datatransport/runtime/o;


# direct methods
.method public synthetic constructor <init>(La9/m0;Ljava/util/List;Lcom/google/android/datatransport/runtime/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La9/x;->a:La9/m0;

    iput-object p2, p0, La9/x;->b:Ljava/util/List;

    iput-object p3, p0, La9/x;->c:Lcom/google/android/datatransport/runtime/o;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, La9/x;->a:La9/m0;

    iget-object v1, p0, La9/x;->b:Ljava/util/List;

    iget-object v2, p0, La9/x;->c:Lcom/google/android/datatransport/runtime/o;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, La9/m0;->d0(La9/m0;Ljava/util/List;Lcom/google/android/datatransport/runtime/o;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
