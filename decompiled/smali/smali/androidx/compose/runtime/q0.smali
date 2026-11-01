.class public final Landroidx/compose/runtime/q0;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Object;

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/q0;->a:I

    iput-object p2, p0, Landroidx/compose/runtime/q0;->b:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/runtime/q0;->c:I

    iput p4, p0, Landroidx/compose/runtime/q0;->d:I

    iput p5, p0, Landroidx/compose/runtime/q0;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/q0;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/q0;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/q0;->d:I

    return v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/q0;->b:Ljava/lang/Object;

    return-object v0
.end method
