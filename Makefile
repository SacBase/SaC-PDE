SAC2C     = sac2c_p
SAC_FLAGS = -maxwlur 9 -maxlur 3 #-check tc

SEQ      = $(patsubst src/%.sac, bin/%_seq,     $(wildcard src/*.sac))
MT       = $(patsubst src/%.sac, bin/%_mt,      $(wildcard src/*.sac))
CUDA     = $(patsubst src/%.sac, bin/%_cuda,    $(wildcard src/*.sac))
DISTMEM  = $(patsubst src/%.sac, bin/%_distmem, $(wildcard src/*.sac))
 
all: seq mt algo.pdf

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
	$(SAC2C) $(SAC_FLAGS) -noPHM -t distmem $< -o $@

algo.pdf: algo.tex
	latexmk -pdf $<

clean:
	$(RM) bin/*
