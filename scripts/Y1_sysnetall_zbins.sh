
source /global/common/software/desi/desi_environment.sh main

export LSSDIR=$HOME
export SYSNETDIR=$HOME/desicode
export LSSBASE=/global/cfs/cdirs/desi/survey/catalogs/
PYTHONPATH=$PYTHONPATH:$LSSDIR/LSS/py

python scripts/main/mkCat_main.py --basedir /global/cfs/cdirs/desi/survey/catalogs/ --type ELG_LOP --notqso y --prepsysnet y --imsys_zbin y --fulld n --survey Y1 --verspec iron --version $1

$LSSDIR/LSS/scripts/run_sysnet.sh N ELG_LOPnotqso0.8_1.1 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S ELG_LOPnotqso0.8_1.1 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

$LSSDIR/LSS/scripts/run_sysnet.sh N ELG_LOPnotqso0.8_1.1 false true 1024 0.004 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S ELG_LOPnotqso0.8_1.1 false true 1024 0.004 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

$LSSDIR/LSS/scripts/run_sysnet.sh N ELG_LOPnotqso1.1_1.6 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S ELG_LOPnotqso1.1_1.6 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

$LSSDIR/LSS/scripts/run_sysnet.sh N ELG_LOPnotqso1.1_1.6 false true 1024 0.004 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S ELG_LOPnotqso1.1_1.6 false true 1024 0.004 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/


python scripts/main/mkCat_main.py --basedir /global/cfs/cdirs/desi/survey/catalogs/ --type ELG_LOP --notqso y --add_sysnet y --imsys_zbin y --fulld n --survey Y1 --verspec iron --version $1

python scripts/validation/validation_sky.py --tracer ELG_LOPnotqso --version $1

python scripts/main/mkCat_main.py --basedir /global/cfs/cdirs/desi/survey/catalogs/ --type LRG --prepsysnet y --imsys_zbin y --fulld n --survey Y1 --verspec iron --version $1

$LSSDIR/LSS/scripts/run_sysnet.sh N LRG0.4_0.6 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S LRG0.4_0.6 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

$LSSDIR/LSS/scripts/run_sysnet.sh N LRG0.4_0.6 false true 1024 0.01 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S LRG0.4_0.6 false true 1024 0.01 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

$LSSDIR/LSS/scripts/run_sysnet.sh N LRG0.6_0.8 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S LRG0.6_0.8 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

$LSSDIR/LSS/scripts/run_sysnet.sh N LRG0.6_0.8 false true 1024 0.01 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S LRG0.6_0.8 false true 1024 0.01 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

$LSSDIR/LSS/scripts/run_sysnet.sh N LRG0.8_1.1 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S LRG0.8_1.1 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

$LSSDIR/LSS/scripts/run_sysnet.sh N LRG0.8_1.1 false true 1024 0.01 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S LRG0.8_1.1 false true 1024 0.01 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

python scripts/main/mkCat_main.py --basedir /global/cfs/cdirs/desi/survey/catalogs/ --type LRG --add_sysnet y --imsys_zbin y --fulld n --survey Y1 --verspec iron --version $1

python scripts/main/mkCat_main.py --basedir /global/cfs/cdirs/desi/survey/catalogs/ --type QSO --prepsysnet y --imsys_zbin y --fulld n --survey Y1 --verspec iron --version $1

$LSSDIR/LSS/scripts/run_sysnet.sh N QSO0.8_1.3 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S QSO0.8_1.3 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

$LSSDIR/LSS/scripts/run_sysnet.sh N QSO0.8_1.3 false true 1024 0.01 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S QSO0.8_1.3 false true 1024 0.01 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

$LSSDIR/LSS/scripts/run_sysnet.sh N QSO1.3_2.1 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S QSO1.3_2.1 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

$LSSDIR/LSS/scripts/run_sysnet.sh N QSO1.3_2.1 false true 1024 0.01 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S QSO1.3_2.1 false true 1024 0.01 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

$LSSDIR/LSS/scripts/run_sysnet.sh N QSO2.1_3.5 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S QSO2.1_3.5 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

$LSSDIR/LSS/scripts/run_sysnet.sh N QSO2.1_3.5 false true 1024 0.01 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S QSO2.1_3.5 false true 1024 0.01 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

python scripts/main/mkCat_main.py --basedir /global/cfs/cdirs/desi/survey/catalogs/ --type QSO --add_sysnet y --imsys_zbin y --fulld n --survey Y1 --verspec iron --version $1


python scripts/main/mkCat_main.py --basedir /global/cfs/cdirs/desi/survey/catalogs/ --type BGS_BRIGHT-21.5 --prepsysnet y --imsys_zbin y --fulld n --survey Y1 --verspec iron --version $1

$LSSDIR/LSS/scripts/run_sysnet.sh N BGS_BRIGHT-21.50.1_0.4 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S BGS_BRIGHT-21.50.1_0.4 true false 1024 0.003 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/

$LSSDIR/LSS/scripts/run_sysnet.sh N BGS_BRIGHT-21.50.1_0.4 false true 1024 0.01 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
$LSSDIR/LSS/scripts/run_sysnet.sh S BGS_BRIGHT-21.50.1_0.4 false true 1024 0.01 dnnp pnll $1 $LSSBASE/Y1/LSS/iron/LSScats/
