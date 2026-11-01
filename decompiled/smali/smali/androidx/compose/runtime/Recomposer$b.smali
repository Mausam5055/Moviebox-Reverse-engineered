.class final Landroidx/compose/runtime/Recomposer$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/Recomposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/runtime/Recomposer$b;->a:Z

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$b;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$b;->b:Ljava/lang/Exception;

    return-object v0
.end method
