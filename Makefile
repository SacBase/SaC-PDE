SAC2C     = sac2c_d
SAC_FLAGS = -maxwlur 9 #-check tc

SEQ      = $(patsubst src/%.sac, bin/%_seq,     $(filter-out src/red_black_sor.sac, $(wildcard src/*.sac)))
MT       = $(patsubst src/%.sac, bin/%_mt,      $(filter-out src/red_black_sor.sac, $(wildcard src/*.sac)))
CUDA     = $(patsubst src/%.sac, bin/%_cuda,    $(filter-out src/red_black_sor.sac, $(wildcard src/*.sac)))
DISTMEM  = $(patsubst src/%.sac, bin/%_distmem, $(filter-out src/red_black_sor.sac, $(wildcard src/*.sac)))

all: seq mt

seq:     $(SEQ)
mt:      $(MT)
cuda:    $(CUDA)
distmem: $(DISTMEM)

bin/%_seq: src/%.sac
	$(SAC2C) $(SAC_FLAGS) $< -o $@

bin/%_mt: src/%.sac
	$(SAC2C) $(SAC_FLAGS) -t mt_pth $< -o $@

bin/%_cuda: src/%.sac
	$(SAC2C) $(SAC_FLAGS) -t cuda $< -o $@

bin/%_distmem: src/%.sac
	$(SAC2C) $(SAC_FLAGS) -t distmem $< -o $@

clean:
	$(RM) bin/*
