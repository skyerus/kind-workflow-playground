.PHONY: test
test:
	kubectl create ns e2e-test
	kubectl -n e2e-test apply -f ./test/e2e/e2e.yml
	kubectl wait --for=condition=Available=True deploy --all -n 'e2e-test'
	curl localhost:30000

