.class public final Lr/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lr/c;

.field private static final b:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final c:F

.field private static final d:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final e:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final f:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final g:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final h:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final i:F

.field private static final j:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final k:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final l:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final m:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr/c;

    invoke-direct {v0}, Lr/c;-><init>()V

    sput-object v0, Lr/c;->a:Lr/c;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Lr/c;->b:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    double-to-float v0, v0

    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v0

    sput v0, Lr/c;->c:F

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Lr/c;->d:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Lr/c;->e:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Lr/c;->f:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Lr/c;->g:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Lr/c;->h:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    double-to-float v0, v0

    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v0

    sput v0, Lr/c;->i:F

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurfaceVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Lr/c;->j:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Lr/c;->k:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Lr/c;->l:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Lr/c;->m:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    sget v0, Lr/c;->c:F

    return v0
.end method
