.class public final Lr/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lr/b;

.field private static final b:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr/b;

    invoke-direct {v0}, Lr/b;-><init>()V

    sput-object v0, Lr/b;->a:Lr/b;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OutlineVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Lr/b;->b:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    double-to-float v0, v0

    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v0

    sput v0, Lr/b;->c:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 1

    sget-object v0, Lr/b;->b:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object v0
.end method

.method public final b()F
    .locals 1

    sget v0, Lr/b;->c:F

    return v0
.end method
