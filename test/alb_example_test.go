package test

import (
	"github.com/gruntwork-io/terratest/modules/terraform"
	"testing"
)

func TestAlbExample(t *testing.T) {
	opts := &terraform.Options{
		// You should update this path to point at your alb
		// example directory!
		TerraformDir: "../examples/alb",
	}

	terraform.Init(t, opts)
	terraform.Apply(t, opts)
}
